ActiveAdmin.register Badge do

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

  permit_params :student_id, :course_id, :mentor_id

  filter :student_id
  filter :course_id
  filter :mentor_id
  filter :created_at

  # form do |f|
  #   f.inputs "Badge details" do
  #     f.input :student_id
  #     f.input :course_id
  #     f.input :mentor_id
  #   end
  #   f.actions
  # end

end
