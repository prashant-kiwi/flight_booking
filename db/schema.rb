# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20210204055825) do

  create_table "airplanes", force: :cascade do |t|
    t.string   "name"
    t.integer  "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airplanes_seat_configurations", id: false, force: :cascade do |t|
    t.integer "airplane_id",           null: false
    t.integer "seat_configuration_id", null: false
  end

  add_index "airplanes_seat_configurations", ["airplane_id"], name: "index_airplanes_seat_configurations_on_airplane_id"
  add_index "airplanes_seat_configurations", ["seat_configuration_id"], name: "index_airplanes_seat_configurations_on_seat_configuration_id"

  create_table "airports", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "booking_number"
    t.string   "pnr"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "bookings", ["booking_number"], name: "index_bookings_on_booking_number"
  add_index "bookings", ["pnr"], name: "index_bookings_on_pnr"
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id"

  create_table "flights", force: :cascade do |t|
    t.string   "airline"
    t.integer  "origin_airport_id"
    t.integer  "destination_airport_id"
    t.datetime "departure_datetime"
    t.datetime "arrival_datetime"
    t.string   "flight_no"
    t.integer  "airplane_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "flights", ["airplane_id"], name: "index_flights_on_airplane_id"

  create_table "passenger_details", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "passenger_id"
    t.integer  "seat_id"
    t.integer  "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "passenger_details", ["booking_id"], name: "index_passenger_details_on_booking_id"
  add_index "passenger_details", ["seat_id"], name: "index_passenger_details_on_seat_id"

  create_table "passengers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.date     "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "booking_id"
    t.string   "transaction_id"
    t.decimal  "amount"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "payments", ["booking_id"], name: "index_payments_on_booking_id"
  add_index "payments", ["transaction_id"], name: "index_payments_on_transaction_id"

  create_table "seat_configurations", force: :cascade do |t|
    t.string   "category"
    t.integer  "seats_in_a_row"
    t.integer  "no_of_rows"
    t.decimal  "base_price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer  "flight_id"
    t.integer  "seat_configuration_id"
    t.string   "seat_number"
    t.integer  "status"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "seats", ["flight_id"], name: "index_seats_on_flight_id"
  add_index "seats", ["seat_configuration_id"], name: "index_seats_on_seat_configuration_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "encrypted_password"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
