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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120916090700) do

  create_table "employees", :force => true do |t|
    t.string   "role"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "mobile"
    t.string   "home_phone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employments", :force => true do |t|
    t.integer  "store_id"
    t.integer  "employee_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "shifts", :force => true do |t|
    t.integer  "store_id"
    t.string   "day"
    t.time     "start_time"
    t.time     "finish_time"
    t.time     "break_time"
    t.string   "shift_type"
    t.string   "orders_to_place"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "unavailabilities", :force => true do |t|
    t.integer  "employee_id"
    t.time     "start_time"
    t.time     "finish_time"
    t.integer  "day"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
