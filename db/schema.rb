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

ActiveRecord::Schema.define(version: 20160810022145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "created_by", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "admins", ["user_id"], name: "index_admins_on_user_id", unique: true, using: :btree

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "base_stat"
    t.boolean  "ranged"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.string   "duration"
    t.string   "skill_bracket"
    t.string   "game_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer  "profile_id",   null: false
    t.integer  "game_id",      null: false
    t.string   "hero_picked"
    t.integer  "kills"
    t.integer  "deaths"
    t.integer  "assists"
    t.string   "side"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "character_id", null: false
  end

  add_index "players", ["character_id"], name: "index_players_on_character_id", using: :btree
  add_index "players", ["game_id"], name: "index_players_on_game_id", using: :btree
  add_index "players", ["profile_id"], name: "index_players_on_profile_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nationality"
    t.integer  "ranking"
    t.string   "language"
    t.integer  "reports"
    t.integer  "abandons"
    t.integer  "carry"
    t.integer  "support"
    t.integer  "roamer"
    t.integer  "mid"
    t.integer  "offlaner"
    t.integer  "jungler"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "admins", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "players", "characters"
  add_foreign_key "players", "games"
  add_foreign_key "players", "profiles"
  add_foreign_key "profiles", "users"
end
