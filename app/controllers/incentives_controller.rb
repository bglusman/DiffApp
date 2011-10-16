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

  def new
    @action = Action.find params[:action_id]
    @incentive = Incentive.new(:supporter_id => @action.id)
  end

  def create
    @incentive = Incentive.new params[:incentive]
    if @incentive.save
      flash[:notice] = "Thanks for offering to help! Your reward is now up for grabs."
      redirect_to actor_path @incentive.supporter
    else
      flash[:error] = @incentive.errors
      redirect_to new_incentive_path :action_id => @incentive.action_id
    end
  end
end
