ActiveAdmin.register Course do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :title, :description, :image, :remote_image_url

  form do |f|
    f.inputs 'Badge details' do
      f.input :title
      f.input :image
      f.input :remote_image_url
      f.input :description
    end
    f.actions
  end
end
