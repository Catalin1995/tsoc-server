class StudentController < ApplicationController
  def index
    @students = User.where(mentor: false)
  end

  def show
    @student = User.find(params['id'])
    @badges = Badge.where(student_id: params['id'])
    @status = @badges.count
    @number_of_courses = Course.count

    @uncompleted = Course.all

    @completed = []
    @badges.each do |badge|
      @completed.push(Course.find(badge['course_id']))
      @uncompleted -= [Course.find(badge['course_id'])]
    end
  end
end
