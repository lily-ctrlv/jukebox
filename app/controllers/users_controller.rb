class UsersController < ApplicationController
  def show
    redirect_to root_path unless current_user
    @recent_10_bids = Bid.where(user_id: current_user.id).order(created_at: :desc).first(10)
  end
end
