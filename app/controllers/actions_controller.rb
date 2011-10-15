class ActionsController < ApplicationController
  def show
    @actions = Action.all
    @action = Action.find params[:id]
  end
end
