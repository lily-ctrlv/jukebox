class BidsController < ApplicationController
  def index
    @bids = Bid.where(user_id: current_user.id)
  end

  def show
    @bid = Bid.find_by(user_id: current_user.id, id: params[:id])
    @event_track = EventTrack.find(user_id: current_user.id)

    # the below is necessary for views using the navbar
    @body_padding = true
  end

  def new
    @bid = Bid.new
  end

  def create
    if !current_user
      redirect_to new_user_session_path
    else
      @bid = Bid.new(bid_params)
      @bid.user_id = current_user.id
      @bid.event_track_id = EventTrack.find(params[:event_track_id]).id
      if @bid.save
        redirect_to user_bids_path(current_user.id)
      else
        @event_track = EventTrack.find(params[:event_track_id])
        # render 'event_tracks/show'
        redirect_to event_tracks_path
      end
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:user_id, :event_tracks_id, :amount)
  end
end
