class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :description
      t.integer :skill_id

      t.timestamps null: false
    end
  end
end
