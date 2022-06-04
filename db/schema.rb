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

ActiveRecord::Schema.define(version: 20220604201659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "owner"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "tel"
    t.string "fax"
    t.string "mobile"
    t.string "website"
    t.string "email"
    t.string "category"
    t.string "spec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.text "comment"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "family_members", force: :cascade do |t|
    t.string "external_id"
    t.string "first_name"
    t.string "last_name"
    t.string "father_id"
    t.string "grandfather_id"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "spouse"
    t.string "telephone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "email"
    t.string "children"
    t.string "education"
    t.string "profession"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "person_id"
    t.index ["person_id"], name: "index_members_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "middle_name"
    t.string "last_name", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "country"
    t.index ["user_id"], name: "index_people_on_user_id"
  end

  create_table "professionals", force: :cascade do |t|
    t.string "picture"
    t.string "graduation_degree"
    t.string "graduation_university"
    t.string "graduation_year"
    t.string "job_title"
    t.string "job_company"
    t.string "location"
    t.string "telephone"
    t.string "mobile"
    t.string "fax"
    t.string "email"
    t.string "website"
    t.string "category"
    t.string "spec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "private", default: false
    t.bigint "person_id"
    t.index ["person_id"], name: "index_professionals_on_person_id"
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
    t.boolean "admin"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "members", "people"
  add_foreign_key "professionals", "people"
end
