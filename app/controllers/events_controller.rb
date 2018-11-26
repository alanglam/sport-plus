class EventsController < ApplicationController
 def index
    @events = Event.all
    @sport = Sport.find(params[:sport_id])
  end

  def show
    @sport = Sport.find(params[:id])
    @event = Event.find(params[:id])
    @booking = Booking.find(params[:id])


  end

end
