class DungeonHash < ActiveRecord::Base
  has_one :dungeon
  belongs_to :user

  validates :user, presence: true
  validates :dungeon_hash, presence: true
end
