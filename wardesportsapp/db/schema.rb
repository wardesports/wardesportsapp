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

ActiveRecord::Schema.define(version: 20170329202831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "eventgames", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_eventgames_on_event_id", using: :btree
    t.index ["game_id"], name: "index_eventgames_on_game_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start"
    t.datetime "end"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postalcode"
    t.string   "website"
    t.text     "links"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "type"
    t.string   "version"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "userevents", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "organizer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["event_id"], name: "index_userevents_on_event_id", using: :btree
    t.index ["organizer_id"], name: "index_userevents_on_organizer_id", using: :btree
    t.index ["user_id"], name: "index_userevents_on_user_id", using: :btree
  end

  create_table "usergames", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.integer  "organizer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["game_id"], name: "index_usergames_on_game_id", using: :btree
    t.index ["organizer_id"], name: "index_usergames_on_organizer_id", using: :btree
    t.index ["user_id"], name: "index_usergames_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.text     "description"
    t.string   "password_digest"
    t.string   "organization_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postalcode"
    t.boolean  "admin"
    t.boolean  "organizer"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_foreign_key "eventgames", "events"
  add_foreign_key "eventgames", "games"
  add_foreign_key "userevents", "events"
  add_foreign_key "userevents", "users"
  add_foreign_key "usergames", "games"
  add_foreign_key "usergames", "users"
end
