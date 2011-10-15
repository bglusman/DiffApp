class Sponsors::ActionsController < ApplicationController
  def edit
    @action = Action.find params[:id]
    @sponsor = @action.sponsor
    @actions = @sponsor.actions
  end
end
