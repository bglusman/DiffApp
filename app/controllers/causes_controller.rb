class CausesController < ApplicationController
  def vote_up
    begin
      current_actor.vote_for(@cause = Cause.find(params[:id]))
      render :nothing => true, :status => 200
    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  def vote_down
    begin
      current_actor.vote_against(@cause = Cause.find(params[:id]))
      render :nothing => true, :status => 200
    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  # def flag
  #   begin
  #     current_actor.flag(@cause = Cause.find(params[:id]))
  #     render :nothing => true, :status => 200
  #   rescue
  #     render :nothing => true, :status => 404
  #   end
  # end

  def new
  	@cause = Cause.new
  end

  def create
  	@cause = Cause.new(params[:cause])
    @cause.submitter = current_actor
    if @cause.save
      flash[:notice] = "Thanks for creating a new cause!"
      redirect_to causes_path
    else
      flash[:error] = @cause.errors
      redirect_to causes_path
    end
  end

  def index
  	@causes = Cause.all
  end

  def show
    @cause = Cause.find(params[:id])
  end

end
