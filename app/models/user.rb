require 'gravatar'
class User < ActiveRecord::Base
  has_one :badge
  has_many :dungeon_hashes

  validates :name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :set_gravature_img

  mount_uploader :image
  mount_uploader :image, AvatarUploader

  private

  def set_gravature_img
    if gravatar_image == true
      self.remote_image_url = Gravatar.new(email).image_url
    end
  end
end
