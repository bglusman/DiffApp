class CausesController < ApplicationController
  def vote_up
    current_user.vote_up Cause.find(params[:id])
    redirect_to :back
  end

  def vote_down
    current_user.vote_down Cause.find(params[:id])
    redirect_to :back
  end

  # def flag
  #   begin
  #     current_user.flag(@cause = Cause.find(params[:id]))
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
    @cause.submitter = current_user
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
