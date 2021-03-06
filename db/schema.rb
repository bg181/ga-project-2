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

ActiveRecord::Schema.define(version: 20151105153717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "length"
    t.integer  "restaurant_id"
  end

  add_index "bookings", ["restaurant_id"], name: "index_bookings_on_restaurant_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string  "name"
    t.text    "description"
    t.text    "picture"
    t.integer "user_id"
    t.integer "price"
    t.float   "latitude"
    t.float   "longitude"
    t.string  "street_number"
    t.string  "street_name"
    t.string  "city"
    t.string  "country"
    t.string  "postcode"
    t.time    "monday_open"
    t.time    "monday_close"
    t.time    "tuesday_open"
    t.time    "tuesday_close"
    t.time    "wednesday_open"
    t.time    "wednesday_close"
    t.time    "thursday_open"
    t.time    "thursday_close"
    t.time    "friday_open"
    t.time    "friday_close"
    t.time    "saturday_open"
    t.time    "saturday_close"
    t.time    "sunday_open"
    t.time    "sunday_close"
    t.string  "picture_2"
    t.text    "address"
  end

  add_index "restaurants", ["user_id"], name: "index_restaurants_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "role"
    t.string   "username"
    t.string   "image"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "profile_photos"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bookings", "restaurants"
  add_foreign_key "restaurants", "users"
end
