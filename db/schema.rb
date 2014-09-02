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

ActiveRecord::Schema.define(version: 20140901172316) do

  create_table "accounts", force: true do |t|
    t.string   "vc1",        default: ""
    t.string   "vc2",        default: ""
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "feedbacks", force: true do |t|
    t.string   "user_code"
    t.string   "content"
    t.string   "email"
    t.datetime "bug_happen"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "gacha_histories", force: true do |t|
    t.integer  "user_id"
    t.integer  "gacha_prize_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gacha_histories", ["gacha_prize_id"], name: "index_gacha_histories_on_gacha_prize_id", using: :btree
  add_index "gacha_histories", ["user_id"], name: "index_gacha_histories_on_user_id", using: :btree

  create_table "gacha_prizes", force: true do |t|
    t.integer  "hero_id"
    t.integer  "count",      default: 1
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gacha_prizes", ["hero_id"], name: "index_gacha_prizes_on_hero_id", using: :btree
  add_index "gacha_prizes", ["user_id"], name: "index_gacha_prizes_on_user_id", using: :btree

  create_table "heros", force: true do |t|
    t.string   "name",       default: ""
    t.string   "rank",       default: ""
    t.string   "state",      default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notices", force: true do |t|
    t.integer  "admin_user_id"
    t.text     "content_en"
    t.text     "content_zh"
    t.text     "content_jp"
    t.text     "content_tw"
    t.datetime "start_at"
    t.datetime "end_at"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notices", ["admin_user_id"], name: "index_notices_on_admin_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "uid",                  limit: 40, default: ""
    t.string   "password",             limit: 40, default: ""
    t.string   "authentication_token", limit: 40, default: ""
    t.datetime "migrated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

end
