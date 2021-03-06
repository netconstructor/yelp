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

ActiveRecord::Schema.define(:version => 20121102081926) do

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "website"
    t.string   "phone_number"
    t.string   "address"
    t.string   "rating"
    t.string   "restaurant_url"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "num_of_reviews"
  end

  create_table "reviews", :force => true do |t|
    t.string   "title"
    t.integer  "rating"
    t.text     "content"
    t.integer  "useful_count"
    t.integer  "funny_count"
    t.integer  "cool_count"
    t.string   "hrid"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "restaurant_id"
    t.string   "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "user_id"
    t.string   "public_name"
    t.integer  "friends"
    t.integer  "reviews"
    t.integer  "tips"
    t.integer  "local_photos"
    t.string   "yelping_since"
    t.integer  "useful_votes"
    t.integer  "funny_votes"
    t.integer  "cool_votes"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
