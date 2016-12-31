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

ActiveRecord::Schema.define(version: 20161231063135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "maker"
    t.string   "country",                    null: false
    t.integer  "status",         default: 0, null: false
    t.string   "instagram"
    t.string   "facebook_page"
    t.string   "facebook_group"
    t.string   "twitter"
  end

  create_table "collections", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_collections_on_brand_id", using: :btree
  end

  create_table "nail_polishes", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "size"
    t.string   "color"
    t.integer  "brand_id"
    t.integer  "collection_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["brand_id"], name: "index_nail_polishes_on_brand_id", using: :btree
    t.index ["collection_id"], name: "index_nail_polishes_on_collection_id", using: :btree
  end

  add_foreign_key "collections", "brands"
  add_foreign_key "nail_polishes", "brands"
  add_foreign_key "nail_polishes", "collections"
end
