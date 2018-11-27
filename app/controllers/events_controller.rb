class EventsController < ApplicationController
  def index
    city_query = params[:search][:city_query]
    sport_query = params[:search][:sport_query]
    if city_query.present? && sport_query.present?
      @sport = Sport.find(sport_query)
      @events = Event.where(city: city_query, sport_id: @sport.id)
    else
      redirect_to sports_path
    end
  end

  def show
    @sport = Sport.find(params[:id])
    @event = Event.find(params[:id])
    @booking = Booking.find(params[:id])

  end
end
