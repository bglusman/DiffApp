class SponsorsController < ApplicationController
  def edit
    @sponsor = Sponsor.find params[:id]
    @actions = @sponsor.actions
  end

end
