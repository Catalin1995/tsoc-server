class Course < ActiveRecord::Base
  has_one :badge

  validates :title, presence: true

  mount_uploader :image
  mount_uploader :image, AvatarUploader
end
