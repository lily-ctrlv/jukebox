class BidsController < ApplicationController
  def index
    @bids = Bid.where(user_id: current_user.id)
  end

  def show
    @bid = Bid.find_by(user_id: current_user.id, id: params[:id])
    @event_track = EventTrack.find(user_id: current_user.id)

    # the below is necessary for views using the navbar
  end

  def new
    @bid = Bid.new
  end

  def create
    @event_track = EventTrack.find(params[:event_track_id])
    if !current_user
      redirect_to new_user_session_path
    else
      @bid = Bid.new(bid_params)
      @bid.user = current_user
      @event_track.total_bid_amount_cents += params["bid"]["amount"].to_i * 100
      @event_track.save!
      @bid.event_track = @event_track
      if @bid.save!
        redirect_to event_event_tracks_path
      else
        # render 'event_tracks/show'
        redirect_to event_event_tracks_path
      end
    end
  end

  def update
    @bid = Bid.find(params[:amount])
    @bid.save
end
  private

  def bid_params
    params.require(:bid).permit(:user_id, :event_tracks_id, :amount)
  end
end
