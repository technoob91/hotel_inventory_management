class RoomTypesController < ApplicationController
  
  def index
    @room_types = RoomType.all
    render(json: @room_types)
  end

  def availability
    puts "params: #{params}"
    room_price = prices(params)
    availability = AvailabilityService.get_availability(params)
    
    response = {
      price: room_price,
      available: availability[:available],
      room: availability[:room_id]
    }
    render(json: response)
  end
  
  def prices(params)
    PriceService.get_price(params)
    # render(json: room_price)
  end  

  def show
    @room_types = RoomType.where(property_id: params[:property_id])
    puts @room_types
    render(json: @room_types)
  end

  def new
  end
end
