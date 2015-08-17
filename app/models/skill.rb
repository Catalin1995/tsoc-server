class Skill < ActiveRecord::Base
  has_many :statistics
  has_many :links
  has_many :ranks

  validates :title, presence: true
  validates :description, presence: true
  validates :maxPoints, presence: true
end
