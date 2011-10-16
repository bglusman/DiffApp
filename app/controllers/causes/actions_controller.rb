class Causes::ActionsController < ApplicationController
  def edit
    @action = Action.find params[:id]
    @cause = @action.cause
    @actions = @cause.actions
  end
end
