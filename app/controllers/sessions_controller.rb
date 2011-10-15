class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    actor = Actor.find_by_provider_and_uid(auth["provider"], auth["uid"]) || Actor.create_with_omniauth(auth)
    session[:actor_id] = actor.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:actor_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
