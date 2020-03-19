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
    redirect_to new_user_session_path unless current_user

    @bid = Bid.new(bid_params)
    @bid.user = current_user

    if params[:event_id]
      create_playlist_bid(@bid)
    else
      create_track_bid(@bid)
    end
    sleep(3.0)
    redirect_to event_event_track_path(event_id: current_user.event_id, id: 1)
  end

  def create_playlist_bid(bid)
    @event_track = EventTrack.find(params[:event_track_id])
    @event_track.total_bid_amount_cents += bid.amount_cents
    @event_track.save!
    @bid.event_track = @event_track
    deduct_bid_from_balance(bid) if bid.save!
  end

  def create_track_bid(bid)
    @track = Track.find(params[:track_id])
    @event_tracks = EventTrack.where(event_id: current_user.event_id, done: false)
    if check_for_track_in_playlist(@track, @event_tracks)
      @event_track = EventTrack.find_by(track_id: @track.id, event_id: current_user.event_id, done: false)
      @event_track.total_bid_amount_cents += bid.amount_cents
      @event_track.save!
      bid.event_track_id = @event_track.id
    else
      @new_event_track = EventTrack.create!(track_id: @track.id, event_id: current_user.event_id, total_bid_amount_cents: bid.amount_cents, rank: 10)
      bid.event_track_id = @new_event_track.id
    end
    deduct_bid_from_balance(bid) if bid.save!
  end

  def check_for_track_in_playlist(track, event_tracks)
    return false if event_tracks.empty?

    track_ids = []
    event_tracks.each do |event_track|
      track_ids << event_track.track_id
    end
    track_ids.include?(track.id)
  end

  def deduct_bid_from_balance(bid)
    current_user.update!(balance_cents: current_user.balance_cents - bid.amount_cents)
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
