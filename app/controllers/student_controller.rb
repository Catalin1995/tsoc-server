class StudentController < ApplicationController
  def index
    @students = User.where(mentor: false)
  end

  def show
    @student = User.find(params['id'])
  end
end
