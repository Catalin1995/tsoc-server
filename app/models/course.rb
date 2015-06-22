class Course < ActiveRecord::Base
  has_one :badge

  validates :title, presence: true
end
