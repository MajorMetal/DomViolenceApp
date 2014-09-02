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

ActiveRecord::Schema.define(version: 20140828230853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shelters", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.integer  "zip"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signups", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "victim_id"
    t.integer  "shelter_id"
  end

  add_index "signups", ["shelter_id"], name: "index_signups_on_shelter_id", using: :btree
  add_index "signups", ["victim_id"], name: "index_signups_on_victim_id", using: :btree

  create_table "victims", force: true do |t|
    t.string   "name"
    t.integer  "children"
    t.string   "city"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "password_digest"
    t.string   "remember_token"
    t.string   "email"
  end

  add_index "victims", ["email"], name: "index_victims_on_email", unique: true, using: :btree
  add_index "victims", ["remember_token"], name: "index_victims_on_remember_token", using: :btree

end
