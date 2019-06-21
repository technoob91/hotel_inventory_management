class BookingController < ApplicationController
  skip_before_action :verify_authenticity_token
  def book
    puts params[:from_date]
    Booking.create(check_in_date: params[:from_date],
                    check_out_date: params[:to_date],
                    room_id: params[:room_id],
                    transaction_id: params[:transaction_id],
                    property_id: params[:property_id],
                    price: params[:price])


  end
end
