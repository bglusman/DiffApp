class ActivitiesController < ApplicationController
  def show
    @activities = Activity.all
    @activity = Activity.find params[:id]
  end

  def new
    @activity = Activity.new
    @causes = Cause.all
  end

  def create
    Activity.create(params[:activity])
    redirect_to activities_path
  end

  def index
    @activities = Activity.all
  end
end
