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

ActiveRecord::Schema.define(version: 20140927185458) do

  create_table "agencies", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packages", force: true do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.integer  "sender_agency_id"
    t.integer  "receiver_agency_id"
    t.string   "status"
    t.datetime "dispatched_at"
    t.datetime "delivered_at"
    t.decimal  "lenght"
    t.decimal  "width"
    t.decimal  "height"
    t.decimal  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "role"
    t.string   "cedula"
    t.string   "name"
    t.string   "lastname"
    t.string   "phone"
    t.string   "address"
    t.integer  "agency_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["agency_id"], name: "index_profiles_on_agency_id"
  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "rates", force: true do |t|
    t.integer  "creator_id"
    t.decimal  "constant"
    t.decimal  "value_bs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "cedula"
    t.string   "name"
    t.string   "lastname"
    t.string   "phone"
    t.string   "address"
    t.integer  "agency_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
