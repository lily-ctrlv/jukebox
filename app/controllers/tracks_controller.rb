class TracksController < ApplicationController
  def index
    search = params[:query].present? ? params[:query] : nil
    @tracks = if search
      Track.search(search)
    else
      Track.all
    end
  end
end