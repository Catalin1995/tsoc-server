ActiveAdmin.register Course do
  permit_params :title, :description, :image, :remote_image_url, :link

  form do |f|
    f.inputs 'Badge details' do
      f.input :title
      f.input :link
      f.input :image
      f.input :remote_image_url
      f.input :description
    end
    f.actions
  end
end
