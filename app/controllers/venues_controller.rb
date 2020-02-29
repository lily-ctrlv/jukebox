class VenuesController < ApplicationController
  def show
    @venue = Venue.find(params[:id])
    @body_padding = true

  end

  private

  def venue_params
    params.require(:venue).permit(:location, :name, :date, :start_time, :end_time)

end
