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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20181007090558) do
=======
ActiveRecord::Schema.define(version: 20181006113455) do
>>>>>>> cb4d87da63f7eb7d8f0843252cdc3993d778f2dc

  create_table "bird_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "bird_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "birds", force: :cascade do |t|
    t.string   "bird_name"
    t.text     "bird_info"
    t.integer  "bird_price"
    t.string   "bird_voice"
    t.integer  "species_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "bird_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "species", force: :cascade do |t|
    t.string   "species_name"
    t.text     "species_info"
    t.integer  "min_price"
    t.integer  "max_price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
<<<<<<< HEAD
    t.string   "user_mail"
    t.string   "user_role"
    t.string   "integer"
    t.string   "user_avatar"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

=======
    t.string   "user_password"
    t.string   "user_mail"
    t.integer  "user_role"
    t.string   "user_avatar"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

>>>>>>> cb4d87da63f7eb7d8f0843252cdc3993d778f2dc
end
