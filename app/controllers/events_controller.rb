class EventsController < ApplicationController
  def show
    @events = Event.all
  end

  def new
    if current_user.dj
      @event = Event.new
    end
  end

  def create
    if current_user.dj
      @event = Event.new(event_params)
      @event.user = current_user.id
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:theme, :user, :event, :event_image)
  end
end
