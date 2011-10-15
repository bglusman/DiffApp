class IncentivesController < ApplicationController
  def index
    @incentives = Incentive.all
  end

  def show
    @incentive = Incentive.find params[:id]
    @action = @incentive.action
    @provider = @incentive.provider
  end
end
