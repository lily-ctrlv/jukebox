class EventsController < ApplicationController
  def index
    if current_user.dj
      @events = Event.where(user_id: current_user.id).order(end_date_time: :desc)
    end
  end

  def show
    @event = Event.find(params[:id])
    @other_events = Event.where.not(id: @event.id)
    current_user.update!(event_id: @event.id)
  end

  def new
    if current_user.dj
      @event = Event.new
      @venues = Venue.all
    end
  end

  def create
    if current_user.dj
      @event = Event.new(event_params)
      @event.user = current_user
      if @event.save!
        redirect_to events_path
      else
        render :new
      end
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :venue_id, :start_date_time, :end_date_time, :event_image)
  end
end
