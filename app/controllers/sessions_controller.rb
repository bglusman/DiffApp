class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth_hash["provider"], auth["uid"]) || User.create_with_omniauth(auth_hash, request.remote_ip)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

  def error
    raise auth_hash
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
