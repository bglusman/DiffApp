class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    actor = Actor.find_by_provider_and_uid(auth_hash["provider"], auth["uid"]) || Actor.create_with_omniauth(auth_hash, request.remote_ip)
    session[:actor_id] = actor.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:actor_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
