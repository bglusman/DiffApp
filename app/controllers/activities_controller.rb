class ActivitiesController < ApplicationController
  def vote_up
    current_actor.vote_up Activity.find(params[:id])
    redirect_to :back
  end

  def vote_down
    current_actor.vote_down Activity.find(params[:id])
    redirect_to :back
  end

  # def flag
  #   begin
  #     current_actor.flag(@activity = Activity.find(params[:id]))
  #     render :nothing => true, :status => 200
  #   rescue
  #     render :nothing => true, :status => 404
  #   end
  # end

  def show
    @activities = Activity.all
    @activity = Activity.find params[:id]
  end

  def new
    @activity = Activity.new
    @causes = Cause.all
  end

  def create
    @activity = Activity.new(params[:activity])
    @activity.submitter = current_actor
    if @activity.save
      flash[:notice] = "Thanks for creating a new activity in support of your cause!"
      redirect_to activities_path
    else
      flash[:error] = @activity.errors
      redirect_to new_activity_path :cause_id => @activity.cause_id
    end
  end

  def index
    @activities = Activity.all
  end
end
