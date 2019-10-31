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

ActiveRecord::Schema.define(version: 20191031183308) do

  create_table "cannabis_plants", force: :cascade do |t|
    t.string  "cannabis_species"
    t.string  "variety_name"
    t.integer "column_number"
    t.integer "row_number"
    t.string  "grow_style"
    t.string  "soil_type"
    t.integer "pH_of_soil"
    t.string  "nutrients"
    t.integer "weight_of_flower_produced"
    t.integer "weight_of_leaves_produced"
    t.integer "weight_of_stalks_produced"
    t.integer "weight_of_roots_produced"
    t.integer "grow_room_id"
    t.integer "user_id"
  end

  create_table "crop_productions", force: :cascade do |t|
    t.string   "name"
    t.string   "crop"
    t.integer  "allocated_location"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dreamtech_cannabis_productions_network", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "cannabis_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grow_rooms", force: :cascade do |t|
    t.integer "lighting"
    t.integer "room_temperature"
    t.integer "room_humidity"
    t.string  "ventilation_system"
  end

  create_table "production_networks", force: :cascade do |t|
    t.string  "product_type"
    t.integer "weight_of_product"
    t.string  "buyer"
    t.integer "dreamtech_cannabis_productions_network_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "password_digest"
  end

end
