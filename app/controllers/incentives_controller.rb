class IncentivesController < ApplicationController
  def index
    @incentives = Incentive.all
  end

  def show
    @incentive = Incentive.find params[:id]
    @action = @incentive.action
    @provider = @incentive.provider
  end

  def claim
    @incentive = Incentive.find params[:id]
    @claimant = Actor.find params[:claimant_id]
    @incentive.update_attributes :claimant_id => @claimant.id
    flash[:notice] = "Thanks for helping out!"
    redirect_to actor_path @claimant
  end
end
