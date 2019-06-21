json.extract! room, :id, :name, :max_occupancy, :created_at, :updated_at
json.url room_url(room, format: :json)
