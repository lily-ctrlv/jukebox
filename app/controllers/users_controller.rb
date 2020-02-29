class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @recent_10_bids = Bid.where(user_id: @user.id).order(created_at: :desc).first(10)
  end
end
