class IncentivesController < ApplicationController
  def index
    if params[:cause_id]
      @incentives = Incentive.joins(:activity).where('activities.cause_id' => params[:cause_id])
    else
      @incentives = Incentive.all
    end
  end

  def show
    @incentive = Incentive.find params[:id]
    @activity = @incentive.activity
    @provider = @incentive.provider
  end

  def claim
    @incentive = Incentive.find params[:id]
    @claimant = Actor.find params[:claimant_id]
    @incentive.update_attributes :claimant_id => @claimant.id
    flash[:notice] = "Thanks for helping out!"
    redirect_to actor_path @claimant
  end

  def validate
    @incentive = Incentive.find params[:id]
    @incentive.update_attributes! :performed => true
    flash[:notice] = "Thanks!"
    redirect_to actor_path @incentive.provider
  end

  def new
    @activity = Activity.find params[:activity_id]
    @incentive = Incentive.new(:supporter_id => current_actor.id, :activity_id => @activity.id)
  end

  def create
    @incentive = Incentive.new params[:incentive]
    if @incentive.save
      flash[:notice] = "Thanks for offering to help! Your reward is now up for grabs."
      redirect_to actor_path @incentive.supporter
    else
      flash[:error] = @incentive.errors
      redirect_to new_incentive_path :activity_id => @incentive.activity_id
    end
  end
end
