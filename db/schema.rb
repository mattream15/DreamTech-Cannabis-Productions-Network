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

ActiveRecord::Schema.define(version: 20191031232030) do

  create_table "cannabis_plants", force: :cascade do |t|
    t.string  "cannabis_species"
    t.string  "variety_name"
    t.string  "soil_type"
    t.string  "nutrients"
    t.integer "weight_of_flower_produced"
    t.integer "user_id"
  end

  create_table "grow_rooms", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
  end

  create_table "grow_rooms_cannabis_plants", force: :cascade do |t|
    t.integer "grow_room_id"
    t.integer "cannabis_plant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "password_digest"
  end

end
