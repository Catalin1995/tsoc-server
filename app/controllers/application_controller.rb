class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_mentor_user!
    authenticate_user!
    if current_user.mentor == false
      raise SecurityError
    end
  end

  rescue_from SecurityError do |exception|
    redirect_to '/admin/logout'
  end

end
