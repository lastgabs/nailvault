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

ActiveRecord::Schema.define(version: 20170319145816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "maker"
    t.string "country"
    t.integer "status", default: 0, null: false
    t.string "instagram"
    t.string "facebook_page"
    t.string "facebook_group"
    t.string "twitter"
  end

  create_table "collections", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.integer "year"
    t.integer "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_collections_on_brand_id"
  end

  create_table "nail_polishes", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "size"
    t.string "color"
    t.integer "brand_id"
    t.integer "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_nail_polishes_on_brand_id"
    t.index ["collection_id"], name: "index_nail_polishes_on_collection_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "collections", "brands"
  add_foreign_key "nail_polishes", "brands"
  add_foreign_key "nail_polishes", "collections"
end
