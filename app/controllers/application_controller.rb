class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :navigate_login?

  def navigate_login?
    true
  end
  
  def logged_in?
    current_user.present?
  end

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end
end
