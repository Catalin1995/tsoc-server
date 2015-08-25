class MentorsController < ApplicationController
  def index
    @mentors = User.where(mentor: true)
  end

  def show
    @mentor = User.find(params['id'])
  end
end
