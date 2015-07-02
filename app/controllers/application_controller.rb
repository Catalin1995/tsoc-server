class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_mentor_user!
    authenticate_user!
    fail SecurityError if current_user.mentor == false
  end

  rescue_from SecurityError do |_exception|
    redirect_to '/admin/logout'
  end
end
