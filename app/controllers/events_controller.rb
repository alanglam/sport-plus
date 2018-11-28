class EventsController < ApplicationController
  layout 'map', only: :index
  def index
    @events = Event.where.not(latitude: nil, longitude: nil)


    city_query = params[:search][:city_query]
    sport_query = params[:search][:sport_query]
    if city_query.present? && sport_query.present?
      @sport = Sport.find(sport_query)
      @events = Event.where(city: city_query, sport_id: @sport.id)

       @markers = @events.map do |event|
      {
        lng: event.longitude,
        lat: event.latitude,
        infoWindow: { content: render_to_string(partial: "/events/map_window", locals: { event: event }) }
      }
    end
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
