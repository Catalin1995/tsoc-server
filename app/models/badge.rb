class Badge < ActiveRecord::Base

  belongs_to :course, class_name: "Course"
  belongs_to :student, class_name: "User"
  belongs_to :mentor, class_name: "User"

  validates :course_id, presence: true
  validates :student_id, presence: true
  validates :mentor_id, presence: true
end
