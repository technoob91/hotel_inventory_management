# app/services/rates_service.rb

require 'date'

class PriceService
  class << self
    def initialise
      # @rooms = Room.all
    end
  
    def get_price(params, room_id)
      DailyRate.where("room_type_id = ? AND room_id = ? AND date BETWEEN ? AND ?",
                       params["id"], room_id, params["from-date"],
                       params["to-date"]).sum(:rate).to_i
    end
  end
end
