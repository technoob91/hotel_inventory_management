# app/services/rates_service.rb

require 'date'

class PriceService
  class << self
    def initialise
      # @rooms = Room.all
    end
  
    def get_price(params)
      DailyRate.where("room_type_id = ? AND date BETWEEN ? AND ?",
                       params["id"], params["from-date"], 
                       params["to-date"]).sum(:rate).to_i
    end
  end
end
