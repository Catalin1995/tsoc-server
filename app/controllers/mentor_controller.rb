class MentorController < ApplicationController

  def index
    @mentors = User.where(mentor: true)
    @counter  = 0
  end

  def show
    @user = User.find(params['id'])
    @badges = Badge.where(student_id: params['id'])
    @size = Course.count

  end

end
