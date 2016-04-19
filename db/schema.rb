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

ActiveRecord::Schema.define(version: 20160410025421) do

  create_table "airports", force: :cascade do |t|
    t.string   "place",      limit: 255
    t.string   "code",       limit: 255
    t.integer  "ticket_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "flight_id",  limit: 4
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "flight_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flights", force: :cascade do |t|
    t.integer  "flight_from_id", limit: 4
    t.integer  "flight_to_id",   limit: 4
    t.datetime "start_date"
    t.integer  "duration",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "passenger_id",   limit: 4
    t.integer  "ticket_id",      limit: 4
    t.integer  "airport_id",     limit: 4
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "username",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ticket_id",  limit: 4
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "passenger",    limit: 255
    t.string   "seat_number",  limit: 255
    t.integer  "ticket_id",    limit: 4
    t.integer  "flight_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "passenger_id", limit: 4
    t.integer  "booking_id",   limit: 4
  end

end
