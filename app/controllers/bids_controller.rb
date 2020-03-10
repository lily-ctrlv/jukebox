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
    @event = Event.find(params[:event_id])
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
        current_user.update!(balance_cents: current_user.balance_cents - @bid.amount_cents)
        redirect_to event_event_track_path(event_id: @event.id, id: @event_track.id)
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
