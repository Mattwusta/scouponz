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

ActiveRecord::Schema.define(:version => 20140506035012) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "orderlists", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_id"
    t.integer  "dish1"
    t.integer  "dish2"
    t.integer  "dish3"
    t.integer  "dishsum"
    t.string   "address"
    t.string   "time"
    t.string   "phone"
    t.string   "Name"
    t.string   "reciever"
    t.text     "re"
    t.string   "account"
    t.string   "wireamount"
    t.string   "detail"
    t.string   "paylater"
    t.string   "discount"
    t.string   "gift"
    t.string   "ship"
    t.integer  "dish4"
    t.integer  "dish5"
    t.integer  "dish6"
    t.integer  "week"
    t.integer  "month"
    t.string   "pickuplocation"
    t.string   "pickupdates"
  end

  add_index "orderlists", ["pickupdates"], :name => "index_orderlists_on_pickupdates"
  add_index "orderlists", ["pickuplocation"], :name => "index_orderlists_on_pickuplocation"
  add_index "orderlists", ["user_id"], :name => "index_orderlists_on_user_id"

  create_table "pins", :force => true do |t|
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_remote_url"
    t.string   "name"
    t.string   "slug"
    t.string   "yt_video_id"
    t.string   "instaid"
    t.string   "instapid"
    t.integer  "category_id"
    t.string   "vineid"
  end

  add_index "pins", ["user_id"], :name => "index_pins_on_user_id"

  create_table "shoplists", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "slug"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "intro"
    t.string   "phone"
    t.string   "address"
    t.datetime "confirmable"
    t.string   "confirmation_token"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "confirmed_at"
    t.string   "pickupdate"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["pickupdate"], :name => "index_users_on_pickupdate"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
