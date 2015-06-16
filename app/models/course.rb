class Course < ActiveRecord::Base
  has_many :badge
  validates_associated :badge

  validates :title, presence: true
end
