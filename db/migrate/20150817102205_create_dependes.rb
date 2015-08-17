class CreateDependes < ActiveRecord::Migration
  def change
    create_table :dependes do |t|
      t.integer :skill_id
      t.integer :depend_on

      t.timestamps null: false
    end
  end
end
