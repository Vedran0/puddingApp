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

ActiveRecord::Schema.define(version: 20171003205140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answereds", force: :cascade do |t|
    t.integer  "pudding_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "beers", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "country"
    t.integer  "rating"
    t.string   "beer_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.string   "place"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "tournament_id"
  end

  create_table "patch_notes", force: :cascade do |t|
    t.string   "version"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_its", force: :cascade do |t|
    t.integer  "pudding_id"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puddings", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "name"
  end

  add_index "puddings", ["email"], name: "index_puddings_on_email", unique: true, using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.string   "answer"
    t.datetime "date_available"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "resource"
    t.string   "path_name"
  end

  create_table "results", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "pudding_id"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.integer  "pudding_id"
    t.string   "background",      default: "default"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "post_it_color",   default: "default"
    t.integer  "last_patch_seen", default: 1
  end

  create_table "song_of_the_days", force: :cascade do |t|
    t.integer  "song_id"
    t.date     "of_the_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "things", force: :cascade do |t|
    t.string   "description"
    t.string   "image"
    t.boolean  "done",                  default: false
    t.integer  "achievement_heaviness"
    t.datetime "done_date"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "tournament_players", force: :cascade do |t|
    t.integer  "tournament_id"
    t.integer  "pudding_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
