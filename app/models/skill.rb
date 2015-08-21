class Skill < ActiveRecord::Base
  has_many :statistics
  has_many :links
  has_many :ranks
  has_many :talents
  has_many :dependes
  belongs_to :dungeon

  validates :title, presence: true
  validates :description, presence: true
  validates :maxPoints, presence: true
  validates :dungeon, presence: true
end
