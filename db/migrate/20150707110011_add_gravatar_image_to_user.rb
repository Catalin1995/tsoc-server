class AddGravatarImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :gravatar_image, :boolean
  end
end
