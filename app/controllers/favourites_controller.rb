class FavouritesController < ApplicationController
  def new
    @favourite = Favourite.new
  end

  def create

    Favourite.create user_id: params[:user_id], job_id: params[:job_id]
    redirect_to request.referrer
  end

  def index
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
