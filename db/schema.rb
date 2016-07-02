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

ActiveRecord::Schema.define(version: 20160701211740) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "uuid"
    t.string   "street"
    t.string   "permalink"
    t.integer  "zip",        limit: 50
    t.string   "city",                  default: "", null: false
    t.string   "country",               default: "", null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "addresses", ["permalink"], name: "index_addresses_on_permalink"
  add_index "addresses", ["uuid"], name: "index_addresses_on_uuid"

  create_table "admin_users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "hashed_password", limit: 40
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "username",        limit: 25
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username"

  create_table "admin_users_pages_joins", id: false, force: :cascade do |t|
    t.integer "admin_user_id"
    t.integer "page_id"
  end

  add_index "admin_users_pages_joins", ["admin_user_id", "page_id"], name: "index_admin_users_pages_joins_on_admin_user_id_and_page_id"

  create_table "bookings", force: :cascade do |t|
    t.integer  "uuid"
    t.string   "permalink"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bookings", ["permalink"], name: "index_bookings_on_permalink"

  create_table "organizations", force: :cascade do |t|
    t.string   "title"
    t.string   "descriptiom", limit: 50
    t.string   "type",                   default: "", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "pages", force: :cascade do |t|
    t.integer  "subject_id"
    t.string   "name"
    t.string   "permalink"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "pages", ["permalink"], name: "index_pages_on_permalink"
  add_index "pages", ["subject_id"], name: "index_pages_on_subject_id"

  create_table "section_edits", force: :cascade do |t|
    t.integer  "admin_user_id"
    t.integer  "section_id"
    t.string   "summary"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "section_edits", ["admin_user_id", "section_id"], name: "index_section_edits_on_admin_user_id_and_section_id"

  create_table "sections", force: :cascade do |t|
    t.integer  "page_id"
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",      default: false
    t.string   "content_type"
    t.text     "content"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "sections", ["page_id"], name: "index_sections_on_page_id"

  create_table "spaces", force: :cascade do |t|
    t.integer  "uuid"
    t.string   "permalink"
    t.string   "price_per_day",   limit: 50
    t.string   "price_per_month", limit: 50
    t.string   "price_per_week",             default: "", null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "spaces", ["permalink"], name: "index_spaces_on_permalink"

  create_table "store2bes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer  "uuid"
    t.string   "permalink"
    t.string   "opening hours"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "stores", ["permalink"], name: "index_stores_on_permalink"

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
