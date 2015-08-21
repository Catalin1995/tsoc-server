class Dungeon < ActiveRecord::Base
  has_many :skills
  validates :title, presence: true
end
