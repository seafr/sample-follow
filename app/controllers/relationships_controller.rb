class RelationshipsController < ApplicationController
  def create
    user = User.find(1)
	other_user = User.find(params[:followed_id])
	user.follow(other_user)
	redirect_to other_user
  end

  def destroy
    user = User.find(1)
	other_user = Relationship.find(params[:id]).followed
	user.unfollow(other_user)
	redirect_to other_user
  end
end
