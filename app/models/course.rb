class Course < ActiveRecord::Base
  has_many :badge

  validates :title, presence: true
end
