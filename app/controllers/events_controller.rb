class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @other_events = Event.where.not(id: @event.id)
    current_user.update!(event_id: @event.id)
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
