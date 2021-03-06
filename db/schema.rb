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

ActiveRecord::Schema.define(version: 20160917010032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "rating"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "type"
    t.string   "date_of_last_contact"
    t.text     "notes"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "photo_url"
  end

  create_table "pitches", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.integer  "contact_id"
    t.integer  "pitch_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_submissions_on_contact_id", using: :btree
    t.index ["pitch_id"], name: "index_submissions_on_pitch_id", using: :btree
  end

  add_foreign_key "submissions", "contacts"
  add_foreign_key "submissions", "pitches"
end
