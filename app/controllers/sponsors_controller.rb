class SponsorsController < ApplicationController
  def edit
    @sponsor = Sponsor.find params[:id]
  end

end
