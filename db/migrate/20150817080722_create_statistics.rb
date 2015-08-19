class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :skill_id
      t.string :title
      t.integer :value

      t.timestamps null: false
    end
  end
end
