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

ActiveRecord::Schema.define(:version => 20110520082442) do

  create_table "beds", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "field_state"
    t.string   "name"
  end

  create_table "families", :force => true do |t|
    t.string   "name"
    t.string   "energy"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "field_state"
  end

  create_table "plants", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "family_id"
    t.integer  "seed_from_month"
    t.integer  "seed_from_day"
    t.integer  "seed_to_month"
    t.integer  "seed_to_day"
    t.integer  "maturity_time_in_days"
    t.integer  "variability_in_percent"
  end

  create_table "plants_of_beds", :force => true do |t|
    t.integer  "plant_id"
    t.integer  "bed_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
