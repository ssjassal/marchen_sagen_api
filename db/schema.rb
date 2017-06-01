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

ActiveRecord::Schema.define(version: 20170529205614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "snippets", force: :cascade do |t|
    t.integer  "story_id"
    t.integer  "storyteller_id"
    t.string   "snip"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["story_id"], name: "index_snippets_on_story_id", using: :btree
    t.index ["storyteller_id"], name: "index_snippets_on_storyteller_id", using: :btree
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.string   "content"
    t.string   "author"
    t.string   "description"
    t.date     "date"
    t.string   "img"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "storytellers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.integer  "total"
    t.string   "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "snippets", "stories"
  add_foreign_key "snippets", "storytellers"
end
