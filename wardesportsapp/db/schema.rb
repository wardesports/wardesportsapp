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

ActiveRecord::Schema.define(version: 20170407192955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.integer  "user_id"
    t.integer  "organizer_id"
    t.integer  "attendees_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["attendees_id"], name: "index_events_on_attendees_id", using: :btree
    t.index ["organizer_id"], name: "index_events_on_organizer_id", using: :btree
    t.index ["user_id"], name: "index_events_on_user_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "type"
    t.string   "version"
    t.integer  "event_id"
    t.integer  "user_id"
    t.integer  "organizer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["event_id"], name: "index_games_on_event_id", using: :btree
    t.index ["organizer_id"], name: "index_games_on_organizer_id", using: :btree
    t.index ["user_id"], name: "index_games_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.string   "organization_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postalcode"
    t.boolean  "admin",                  default: false
    t.boolean  "organizer",              default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "events", "users"
  add_foreign_key "games", "events"
  add_foreign_key "games", "users"
end
