class UsersController < ApplicationController
  def show
    @user = current_user
    @recent_10_bids = Bid.where(user_id: @user.id).order(created_at: :desc).first(10)
  end
end
