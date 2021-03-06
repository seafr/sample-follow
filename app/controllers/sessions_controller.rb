class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
	if user
	  session[:user_id] = user.id
	  redirect_to user
	else
	  render 'new'
	end
  end

  def destroy
    session.delete(:user_id) if session[:user_id]
	redirect_to login_url
  end
end
