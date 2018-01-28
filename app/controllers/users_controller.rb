class UsersController < ApplicationController

before_action :check_if_logged_in, only: [:edit]


  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    if user.persisted?
      # raise 'hell'
    #did this thing get saved? is the user present now?
    session[:user_id] = user.id
      redirect_to user
      #will take you to the show page
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def index
    @profiles = User.all
  end

  def juniors
    @jnrs = User.where user_type:'junior'

  end

  def companies
    @employers = User.where user_type:'employer'
  end

  def edit

    @user = User.find params[:id]
    unless @current_user.id == @user.id
      flash[:error] = "You are not authorised to edit this page."
      redirect_to login_path
    end
  end

  def update
    user = User.find params[:id]
      user.update user_params
      redirect_to user
  end

  def show
    @user = User.find params[:id]
    #raise 'hell'
  end

  def destroy
    User.destroy params[:id]
    redirect_to login_path
  end


  private
  # strong params for the artist form submit
  def user_params

    params.require(:user).permit(:name, :email, :password, :password_confirmation, :employer_title, :junior_title, :user_type, :image, :bio, :company)

  end


end
