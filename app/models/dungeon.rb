class Dungeon < ActiveRecord::Base
  has_many :dungeon_hashes
  validates :title, presence: true
end
