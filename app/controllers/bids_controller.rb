class BidsController < ApplicationController
  def index
    @bids = Bid.where(user_id: current_user.id)
  end

  def show
    @bid = Bid.find_by(user_id: current_user.id, id: params[:id])
    @event_track = EventTrack.find(user_id: current_user.id)
  end

  def new
    @bid = Bid.new
  end

  def create
    if !current_user
      redirect_to new_user_session_path
    else
      @bid = Bid.new(bid_params)
      @bid.user = current_user
      @bid.event_track = EventTrack.find(params[:event_track_id])
      if @bid.save
        redirect_to event_tracks_path
      else
        # render 'event_tracks/show'
        redirect_to event_tracks_path
      end
    end
  end

  def update
    @bid = Bid.find(params[:amount])
    if @bid.save
      # render json:
  end
end
  private

  def bid_params
    params.require(:bid).permit(:user_id, :event_tracks_id, :amount)
  end
end
