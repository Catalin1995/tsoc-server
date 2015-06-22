class AddImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :image, :string, default: 'default_img_user.png'
  end
end
