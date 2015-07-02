class Badge < ActiveRecord::Base
  belongs_to :course, class_name: 'Course'
  belongs_to :student, class_name: 'User'
  belongs_to :mentor, class_name: 'User'

  validate :uniq 
  validate :is_student
  validate :is_mentor

  validates :course_id, presence: true
  validates :student_id, presence: true
  validates :mentor_id, presence: true

  private

  def uniq
    if Badge.where(student_id: student_id, course_id: course_id).first != nil
      self.errors.add(:course, 'This course exist for this student')
    end
  end

  def is_student
    if User.find(student_id).mentor == true
      self.errors.add(:student, ' Is not student!!!')
    end
  end

  def is_mentor
    if User.find(mentor_id).mentor == false
      self.errors.add(:mentor, ' Is not mentor!!!')
    end
  end
end
