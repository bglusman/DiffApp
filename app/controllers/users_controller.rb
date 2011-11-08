class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update_attributes(params[:user])
    flash[:notice] = "You're account has been updated."
    redirect_to :back
  end
end
