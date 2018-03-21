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

ActiveRecord::Schema.define(version: 20180321120154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mp3_entities", force: :cascade do |t|
    t.string "title", null: false
    t.string "interpret", null: false
    t.string "album", default: "", null: false
    t.integer "track", default: 0, null: false
    t.string "year", default: "", null: false
    t.string "genre", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlist_entities", force: :cascade do |t|
    t.bigint "playlist_id", null: false
    t.bigint "mp3_entity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mp3_entity_id"], name: "index_playlist_entities_on_mp3_entity_id"
    t.index ["playlist_id"], name: "index_playlist_entities_on_playlist_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_playlists_on_name", unique: true
    t.index ["user_id"], name: "index_playlists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "user_name", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
  end

  add_foreign_key "playlist_entities", "mp3_entities"
  add_foreign_key "playlist_entities", "playlists"
  add_foreign_key "playlists", "users"
end
