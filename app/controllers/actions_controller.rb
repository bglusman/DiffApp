class ActionsController < ApplicationController
  def show
    @actions = Action.all
    @action = Action.find params[:id]
  end

  def new
    @action = Action.new
  end

  def create
    @action = Action.create(params[:action])
  end


end
