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

ActiveRecord::Schema.define(:version => 20120512171751) do

  create_table "autos", :force => true do |t|
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.string   "use"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

# <<<<<<< HEAD
#   create_table "cars", :force => true do |t|
#     t.string   "name"
#     t.datetime "created_at", :null => false
#     t.datetime "updated_at", :null => false
#   end
# 
# =======
# >>>>>>> c491127871bb53b67d0999a6c40893973a174660
  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "drivers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "age_range"
    t.string   "gender"
    t.string   "city"
    t.string   "marital_status"
    t.string   "occupation"
    t.string   "email"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "policies", :force => true do |t|
    t.integer  "company_id"
    t.integer  "auto_id"
    t.string   "age_range"
    t.string   "gender"
    t.string   "city"
    t.string   "marital_status"
    t.string   "occupation"
    t.integer  "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "purchases", :force => true do |t|
    t.integer  "driver_id"
    t.integer  "policy_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
