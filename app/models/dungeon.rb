class Dungeon < ActiveRecord::Base
  has_many :skills
  belongs_to :dungeon_hash
  
  validates :title, presence: true
  validates :dungeon_hash, presence: true
end
