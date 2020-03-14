class EventTracksController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @event_tracks = @event.event_tracks.where(done: false).order(total_bid_amount_cents: :desc)
    @bid = Bid.new
  end

  def show
    @event = Event.find(params[:event_id])
    @all_event_tracks = @event.event_tracks.order(done: :asc, total_bid_amount_cents: :desc)
    # @event_tracks = @event.event_tracks.where(done: false).order(total_bid_amount_cents: :desc)
    # @done_event_tracks = @event.event_tracks.where(done: true).order(total_bid_amount_cents: :desc)
    @bid = Bid.new
    if current_user.dj
      current_user.update!(event_id: @event.id)
    end
  end

  def new
    @event_track = EventTrack.new
    @bid = Bid.new
  end

  def create
    @event_track = EventTrack.new(event_track_params)
    if current_user.dj
      @event_track.event = Event.find(current_user.event_id)
      last_rank = EventTrack.where(event: @event_track.event).count
      @event_track.rank = last_rank + 1
      @event_track.total_bid_amount_cents = 0
    end
    @event_track.save
    redirect_to event_event_track_path(current_user.event_id, 1)
  end

  def update
    @event_track = EventTrack.find(params[:id])
    @event_track.done = true
    @event_track.save

    redirect_to event_event_track_path(@event_track.event, @event_track)
  end

  def edit
    @event_track = EventTrack.find(params[:id])
  end

  def destroy
    if current_user.dj
      @event_track = EventTrack.find(params[:id])
      @event = @event_track.event
      bids = @event_track.bids
      bids.each do |bid|
        refund = bid.amount_cents
        user = bid.user
        user.balance_cents += refund
        user.save!

        current_user.balance_cents -= refund
        current_user.save
      end
      @event_track.destroy
      # should be index not show! (arthur)
      redirect_to event_event_track_path(@event.id, 1)
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
    params.require(:event_track).permit(:track_id)
  end
end
