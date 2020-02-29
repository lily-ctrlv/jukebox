class TracksController < ApplicationController

  def index
    @tracks = Track.all
    @body_padding = true

  end

end
