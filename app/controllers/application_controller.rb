class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_actor

  private
  def current_actor
    @current_actor ||= Actor.find(session[:actor_id]) if session[:actor_id]
  end
end
