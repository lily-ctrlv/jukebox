class EventTracksController < ApplicationController

  def index
    @event = Event.find(params[:event_id])
    @event_tracks = @event.event_tracks.order(total_bid_amount_cents: :desc)
    @bid = Bid.new

  end

  def show
  end

  def new
    @event_track = EventTrack.new
    @bid = Bid.new
  end

  def create
    @event_track = EventTrack.new(event_track_params)
    @event_track.user = current_user.id
    if event_track.save
      redirect_to event_track_path(@event_track)
    else
      render :new
    end
  end

  def update
    @event_track = EventTrack.find(params[:id])
    if @event_track.update(event_track_params)
      redirect_to event_track_path(@event_track)
    else
      render :new
    end
  end

  def edit
    @event_track = EventTrack.find(params[:id])
  end

  def destroy
    # raise
    if current_user.dj
      @event_track = EventTrack.find(params[:id])
      @event = @event_track.event
      bids = @event_track.bids
      bids.each do |bid|
        refund = bid.amount_cents
        user = bid.user
        user.balance_cents += refund
        user.save!
      end
      @event_track.destroy
      # should be index not show! (arthur)
      redirect_to event_event_tracks_path(@event)
    end
  end

  def mark_as_done
    if current_user.dj
      @event_track = EventTrack.find(params[:id])
      @event_track.mark_as_done!
    end
  end

  private

  def event_track_params
    params.require(:event_track).permit(:user_id, :id, :song, :playlist, :total_bid_amount, :rank)
  end
end
