class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :skill_id
      t.string :label
      t.string :url

      t.timestamps null: false
    end
  end
end
