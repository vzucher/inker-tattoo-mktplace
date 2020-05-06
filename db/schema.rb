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

ActiveRecord::Schema.define(version: 2020_05_05_233027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_specialties", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "specialty_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialty_id"], name: "index_artist_specialties_on_specialty_id"
    t.index ["user_id"], name: "index_artist_specialties_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "tattoo_id", null: false
    t.text "description"
    t.float "rating"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tattoo_id"], name: "index_reviews_on_tattoo_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "tattoo_request_id", null: false
    t.datetime "date_time_options", array: true
    t.string "place"
    t.float "price"
    t.datetime "chosen_date"
    t.datetime "accepted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tattoo_request_id"], name: "index_schedules_on_tattoo_request_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.string "banner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tattoo_requests", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "references_photos"
    t.string "bodypart"
    t.float "size"
    t.bigint "user_id", null: false
    t.bigint "tattoo_artist_id", null: false
    t.bigint "specialty_id", null: false
    t.datetime "accepted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialty_id"], name: "index_tattoo_requests_on_specialty_id"
    t.index ["tattoo_artist_id"], name: "index_tattoo_requests_on_tattoo_artist_id"
    t.index ["user_id"], name: "index_tattoo_requests_on_user_id"
  end

  create_table "tattoos", force: :cascade do |t|
    t.bigint "tattoo_request_id", null: false
    t.string "photos"
    t.integer "likes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tattoo_request_id"], name: "index_tattoos_on_tattoo_request_id"
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
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "kind"
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.string "photo"
    t.string "username"
    t.integer "experience"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "artist_specialties", "specialties"
  add_foreign_key "artist_specialties", "users"
  add_foreign_key "reviews", "tattoos"
  add_foreign_key "reviews", "users"
  add_foreign_key "schedules", "tattoo_requests"
  add_foreign_key "tattoo_requests", "specialties"
  add_foreign_key "tattoos", "tattoo_requests"
end
