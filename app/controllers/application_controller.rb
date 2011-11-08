class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :logged_in_user

  private
  def logged_in_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user
    logged_in_user || User.guest(request.remote_ip)
  end
end
