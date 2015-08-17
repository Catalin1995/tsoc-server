class Skill < ActiveRecord::Base
  has_many :statistics
  has_many :links

  validates :title, presence: true
  validates :description, presence: true
  validates :maxPoints, presence: true
end
