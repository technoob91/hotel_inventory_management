# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_21_114129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.datetime "check_in_date"
    t.datetime "check_out_date"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "property_id"
    t.bigint "room_id"
    t.string "transaction_id"
    t.index ["property_id"], name: "index_bookings_on_property_id"
    t.index ["room_id"], name: "index_bookings_on_room_id"
  end

  create_table "daily_inventories", force: :cascade do |t|
    t.datetime "date"
    t.boolean "available"
    t.bigint "room_id"
    t.bigint "room_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_daily_inventories_on_room_id"
    t.index ["room_type_id"], name: "index_daily_inventories_on_room_type_id"
  end

  create_table "daily_rates", force: :cascade do |t|
    t.datetime "date"
    t.decimal "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "room_type_id"
    t.index ["room_type_id"], name: "index_daily_rates_on_room_type_id"
  end

  create_table "master_inventories", force: :cascade do |t|
    t.integer "total_rooms"
    t.bigint "room_type_id"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_master_inventories_on_property_id"
    t.index ["room_type_id"], name: "index_master_inventories_on_room_type_id"
  end

  create_table "prices", force: :cascade do |t|
    t.datetime "from_date"
    t.datetime "to_date"
    t.decimal "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "room_id"
    t.index ["room_id"], name: "index_prices_on_room_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "property_id"
    t.index ["property_id"], name: "index_room_types_on_property_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "max_occupancy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "property_id"
    t.bigint "room_type_id"
    t.index ["property_id"], name: "index_rooms_on_property_id"
    t.index ["room_type_id"], name: "index_rooms_on_room_type_id"
  end

  add_foreign_key "bookings", "properties"
  add_foreign_key "bookings", "rooms"
  add_foreign_key "daily_rates", "room_types"
  add_foreign_key "prices", "rooms"
  add_foreign_key "room_types", "properties"
  add_foreign_key "rooms", "properties"
  add_foreign_key "rooms", "room_types"
end
