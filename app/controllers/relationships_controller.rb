class RelationshipsController < ApplicationController
  def create
    user = User.find(2)
	other_user = User.find(params[:followed_id])
	user.follow(other_user)
	redirect_to other_user
  end
end
