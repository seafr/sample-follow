class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
	if @user.save
	  redirect_to @user
	else
	  render 'new'
	end
  end

  def following
    @user = User.find(params[:id])
	@following = @user.following
  end

  def followers
    @user = User.find(params[:id])
	@followers = @user.followers
  end

  private

    def user_params
	  params.require(:user).permit(:name, :email)
	end
end
