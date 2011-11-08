class ActorsController < ApplicationController
  def show
    @actor = Actor.find(params[:id])
  end

  def update
    actor = Actor.find(params[:id])
    actor.update_attributes(params[:actor])
    flash[:notice] = "You're account has been updated."
    redirect_to :back
  end
end
