# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[Property, RoomType, Room, DailyInventory, DailyRate].each(&:delete_all)

Property.populate 5 do |property|
  property.name = Populator.words(1..2).titleize
  RoomType.populate 1 do |room_type|
    room_type.property_id = property.id
    room_type.name = 'Double'
    Room.populate 1 do |room|
      room.name = "Room"
      room.property_id = property.id
      room.room_type_id = room_type.id
      room.max_occupancy = 2
    end  
  end  
end  

@rooms = Room.all
start_date = Time.zone.now.to_date
end_date = start_date + 90.days

@rooms.each do |room|
  start_date.upto(end_date) do |date|
    puts "date: #{date}, room id: #{room.id}"
    DailyRate.create(date: date, rate: 100, room_type_id: room.room_type_id, room_id: room.id)
    DailyInventory.create(date: date, available: true, room_id: room.id, room_type_id: room.room_type_id)
  end  
end
