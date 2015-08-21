class DungeonHash < ActiveRecord::Base
  belongs_to :dungeon
  belongs_to :user

  validates :user, presence: true
  validates :dungeon, presence: true
  validates :dungeon_hash, presence: true
end
