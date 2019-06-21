class RoomTypesController < ApplicationController
  
  def index
    @room_types = RoomType.all
    render(json: @room_types)
  end

  def availability
    puts "params: #{params}"
    availability = AvailabilityService.get_availability(params)
    
    response = {
      price: PriceService.get_price(params, availability[:room_id]) || 0,
      available: availability[:available],
      room: availability[:room_id]
    }
    render(json: response)
  end

  def show
    @room_types = RoomType.where(property_id: params[:property_id])
    puts @room_types
    render(json: @room_types)
  end

  def new
  end
end
