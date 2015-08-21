class CreateDungeons < ActiveRecord::Migration
  def change
    create_table :dungeons do |t|
      t.string :title
      t.text :description
      t.integer :dungeon_hash_id

      t.timestamps null: false
    end
  end
end
