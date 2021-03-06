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

ActiveRecord::Schema.define(version: 20140607032415) do

  create_table "cities", force: true do |t|
    t.string  "name"
    t.string  "state"
    t.integer "city_id"
  end

  create_table "genres", force: true do |t|
    t.string "name"
  end

  create_table "restaurants", force: true do |t|
    t.string  "name"
    t.string  "photo_url"
    t.string  "state"
    t.integer "city_id"
    t.integer "genre_id"
  end

  create_table "reviews", force: true do |t|
    t.integer  "rest_id"
    t.datetime "created_at"
    t.integer  "user_id"
    t.integer  "rest_rating"
    t.text     "rest_content"
    t.integer  "food_rating"
    t.text     "food_content"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password"
    t.string "name"
  end

end
