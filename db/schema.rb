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

ActiveRecord::Schema.define(version: 2019_07_03_012212) do

  create_table "sayer_sources", force: :cascade do |t|
    t.string "additional_source_info"
    t.integer "sayer_id"
    t.integer "source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sayer_id"], name: "index_sayer_sources_on_sayer_id"
    t.index ["source_id"], name: "index_sayer_sources_on_source_id"
  end

  create_table "sayers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sayings", force: :cascade do |t|
    t.text "body"
    t.integer "sayer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sayer_id"], name: "index_sayings_on_sayer_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
