class StudentController < ApplicationController
  def index
    @students = User.where(mentor: false)
  end

  def show
    @user = User.find(params['id'])
    @badges = Badge.where(student_id: params['id'])
    @status = @badges.count
    @size = Course.count

    @uncompleted = Course.all

    @completed = []
    @badges.each do |badge|
      @completed.push(badge)
      @uncompleted -= [Course.find(badge['course_id'])]
    end
  end
end
