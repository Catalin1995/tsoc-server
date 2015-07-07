require 'pp'
require 'gravatar'
class User < ActiveRecord::Base
  has_one :badge

  validates :name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :set_gravature_img

  mount_uploader :image
  mount_uploader :image, AvatarUploader

  private

  def set_gravature_img
    if self.gravatar_image == true
      self.remote_image_url = Gravatar.new(self.email).image_url
    end
  end

end
