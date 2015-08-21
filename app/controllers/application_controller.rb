class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session

  def authenticate_mentor_user!
    authenticate_user!
    fail SecurityError if current_user.mentor == false
  end

  rescue_from SecurityError do |_exception|
    redirect_to '/admin/logout'
  end
end
