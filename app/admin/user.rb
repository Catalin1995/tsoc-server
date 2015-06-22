ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :mentor, :name, :image

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :mentor
    column :image
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :mentor

  form do |f|
    f.inputs 'Admin Details' do
      f.input :email
      f.input :name
      f.input :password
      f.input :password_confirmation
      f.input :image
      f.input :mentor
    end
    f.actions
  end
end
