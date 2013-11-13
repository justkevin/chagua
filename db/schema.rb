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

ActiveRecord::Schema.define(version: 20131106134932) do

  create_table "admins", force: true do |t|
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.string   "name"
    t.integer  "poll_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polls", force: true do |t|
    t.string   "question"
    t.datetime "start_date"
    t.datetime "deadline",   limit: 255
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "polls", ["admin_id"], name: "index_polls_on_admin_id"

  create_table "voters", force: true do |t|
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.string   "phone"
    t.boolean  "approved"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "option_id"
    t.integer  "voter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["option_id"], name: "index_votes_on_option_id"
  add_index "votes", ["voter_id"], name: "index_votes_on_voter_id"

end
