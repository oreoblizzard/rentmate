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

ActiveRecord::Schema.define(version: 20151119011555) do

  create_table "apartments", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bills", force: :cascade do |t|
    t.integer  "contract_id",  limit: 4,                              null: false
    t.datetime "payment_date",                                        null: false
    t.string   "status",       limit: 255,                            null: false
    t.decimal  "bill_price",               precision: 10, default: 0
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.integer  "apartment_id",    limit: 4,               null: false
    t.string   "name",            limit: 255,             null: false
    t.integer  "number_of_floor", limit: 4,   default: 0
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "owner_id",    limit: 4,                            null: false
    t.integer  "customer_id", limit: 4,                            null: false
    t.integer  "room_id",     limit: 4,                            null: false
    t.datetime "in_date",                                          null: false
    t.datetime "out_date",                                         null: false
    t.decimal  "rent_price",            precision: 10, default: 0
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "room_types", force: :cascade do |t|
    t.string   "type_name",   limit: 255,                            null: false
    t.decimal  "price_day",               precision: 10, default: 0
    t.decimal  "price_month",             precision: 10, default: 0
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "building_id",  limit: 4,             null: false
    t.integer  "room_type_id", limit: 4,             null: false
    t.integer  "floor_number", limit: 4, default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.boolean  "admin",                              default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
