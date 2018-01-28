class FavouritesController < ApplicationController
  before_action :check_if_logged_in




  def new
    @favourite = Favourite.new
  end

  def create

    Favourite.create user_id: params[:user_id], job_id: params[:job_id]
    redirect_to request.referrer
  end


  def update
  end

  def show
    # @favourite_list = if @current_user != nil then Favourite.where user_id:@current_user.id else nil end
    @favourite_list = Favourite.where(user_id: @current_user.id).select("job_id")
    @jobs = Job.where(id: @favourite_list)
    #raise 'hell'
    #@jobs = Jobs.where user_id:@favourite_list
  end

  def destroy
  end
end
