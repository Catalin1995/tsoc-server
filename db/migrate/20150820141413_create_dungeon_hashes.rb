class CreateDungeonHashes < ActiveRecord::Migration
  def change
    create_table :dungeon_hashes do |t|
      t.string :dungeon_hash
      t.integer :user_id
      t.integer :dungeon_id

      t.timestamps null: false
    end
  end
end
