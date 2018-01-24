class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    User.create user_params
    redirect_to users_path
  end

  def juniors
    @jnrs = User.where :user_type => 'junior'
  end
  def companies
    @employers = User.where :user_type => 'employer'
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
      user.update user_params
      redirect_to user
  end

  def show
    @user = User.find params[:id]
  end

  def destroy
    User.destroy params[:id]
    redirect_to planet_path
  end

  private
  # strong params for the artist form submit
  def user_params

    params.require(:user).permit(:name, :email, :password_digest, :employer_title, :junior_title, :user_type, :image, :bio, :company)

  end


end
