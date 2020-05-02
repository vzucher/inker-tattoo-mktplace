# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_02_185758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_specialties", force: :cascade do |t|
    t.integer "rating"
    t.bigint "specialty_id", null: false
    t.bigint "tattoo_artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialty_id"], name: "index_artist_specialties_on_specialty_id"
    t.index ["tattoo_artist_id"], name: "index_artist_specialties_on_tattoo_artist_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.date "data"
    t.time "time"
    t.string "place"
    t.float "price"
    t.bigint "tattoo_request_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tattoo_request_id"], name: "index_schedules_on_tattoo_request_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tattoo_artists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phonenumber"
    t.string "email"
    t.string "city"
    t.integer "experience"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tattoo_requests", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "references_photos"
    t.string "bodypart"
    t.integer "size"
    t.bigint "tattoo_artist_id", null: false
    t.bigint "specialty_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialty_id"], name: "index_tattoo_requests_on_specialty_id"
    t.index ["tattoo_artist_id"], name: "index_tattoo_requests_on_tattoo_artist_id"
    t.index ["user_id"], name: "index_tattoo_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "city"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "artist_specialties", "specialties"
  add_foreign_key "artist_specialties", "tattoo_artists"
  add_foreign_key "schedules", "tattoo_requests"
  add_foreign_key "tattoo_requests", "specialties"
  add_foreign_key "tattoo_requests", "tattoo_artists"
  add_foreign_key "tattoo_requests", "users"
end
