class AvailabilityService
  class << self

  
    def get_availability(params)
      start_date = params["from-date"].to_date
      end_date = params["to-date"].to_date
      total_days = (start_date..end_date).count
      available_rooms = DailyInventory.where("room_type_id = ? AND available = true 
                                              AND date BETWEEN ? AND ?",
                                              params["id"].to_i, start_date, end_date).to_a
      available_count = available_rooms.count
      puts "#{start_date} #{end_date} #{total_days} #{available_count}"
      if (total_days <= available_count)
        return {
          room_id: available_rooms[0].room_id,
          available: true
        }
      end  
      { available: false, room_id: nil }
      
    end

  end
end