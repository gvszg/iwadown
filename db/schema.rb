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

ActiveRecord::Schema.define(version: 20160131065031) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "event_categories", force: true do |t|
    t.integer  "event_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_categories", ["category_id"], name: "index_event_categories_on_category_id", using: :btree
  add_index "event_categories", ["event_id"], name: "index_event_categories_on_event_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "link"
    t.string   "title"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.text     "intro"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",          default: 1
    t.string   "address"
    t.integer  "user_id"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "uid"
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.string   "provider"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",           default: 1
  end

end
