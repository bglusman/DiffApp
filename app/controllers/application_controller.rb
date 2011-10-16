class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_actor, :logged_in_actor

  private
  def logged_in_actor
    @current_actor ||= Actor.find(session[:actor_id]) if session[:actor_id]
  end

  def current_actor
    logged_in_actor || Actor.guest
  end
end
