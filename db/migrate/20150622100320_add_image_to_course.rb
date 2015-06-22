class AddImageToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :image, :string, default: 'default_img_course.png'
  end
end
