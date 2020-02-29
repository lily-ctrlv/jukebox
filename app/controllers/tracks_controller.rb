class TracksController < ApplicationController
  include PgSearch::Model
  multisearchable against: [:title, :artist, :album]

  def index
    @tracks = Track.all
  end
end
