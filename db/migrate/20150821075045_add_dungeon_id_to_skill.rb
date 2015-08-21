class AddDungeonIdToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :dungeon_id, :integer
  end
end
