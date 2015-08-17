class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :description
      t.integer :skill_id

      t.timestamps null: false
    end
  end
end
