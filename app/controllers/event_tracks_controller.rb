class EventTracksController < ApplicationController
  def index
    @event_tracks = EventTrack.all
  end

  def show
    @event_track = EventTrack.find(params[:id])
    @bid = Bid.new
  end

  def new
    @event_track = EventTrack.new
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

  private

  def event_track_params
    params.require(:event_track).permit(:user_id, :id, :song, :playlist, :total_bid_amount, :rank)
  end
end
