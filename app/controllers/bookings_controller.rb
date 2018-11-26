class BookingsController < ApplicationController
  layout 'profile_layout'
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    roof = Event.find(params[:roof_id])
    @booking.event = event
    @booking.user = current_user
    # raise
    if @booking.save
      redirect_to bookings_path, notice: 'Your booking was successfully created.'
    else
      render 'events/show', notice: 'Something went wrong. Could not book roof!'
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:date, :period, :user_id)
  end
end


