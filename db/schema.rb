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

ActiveRecord::Schema.define(version: 20131207235423) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", unique: true, using: :btree

  create_table "countries", force: true do |t|
    t.string   "short_name"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url_original"
    t.string   "url_shortned"
    t.integer  "isActive"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
    t.integer  "category_id"
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id", using: :btree
  add_index "items", ["country_id"], name: "index_items_on_country_id", using: :btree

end
