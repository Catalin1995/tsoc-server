class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.integer :student_id
      t.integer :mentor_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
