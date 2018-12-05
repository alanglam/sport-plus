class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def chat
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking cancelled!'
  end

  def create
    @booking = Booking.new(booking_params)
    # raise
    if @booking.save
      redirect_to bookings_path(@booking), notice: 'Your successfully join this event!'
    else
      render 'events/show', notice: 'Something went wrong. Could not join this event!'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:event_id, :user_id)
  end
end

