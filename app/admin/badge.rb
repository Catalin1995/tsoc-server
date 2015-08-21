ActiveAdmin.register Badge do
  permit_params :student_id, :course_id, :mentor_id

  filter :student_id
  filter :course_id
  filter :mentor_id
  filter :created_at
end
