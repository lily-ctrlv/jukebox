class TracksController < ApplicationController
  def index
    search = params[:query].present? ? params[:query] : nil
    @tracks = if search
      Track.search(search)
    else
      Track.all
    end
  end

  def show
  	@track = Track.find(params[:id])
  end

  private

  def track_params
    params.require(:track).permit(:id)
  end
end