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

ActiveRecord::Schema.define(version: 2021_01_22_175739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forklifts", force: :cascade do |t|
    t.integer "forklift_number"
    t.integer "year"
    t.string "make"
    t.string "model"
    t.string "fork_length"
    t.string "fork_type"
    t.string "weight_capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "message"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "trailers", force: :cascade do |t|
    t.integer "trailer_number"
    t.integer "year"
    t.string "make"
    t.string "model"
    t.string "vin"
    t.string "trailer_type"
    t.string "suspension"
    t.string "plates", default: [], array: true
    t.string "inspection", default: [], array: true
    t.string "insurance_exp"
    t.integer "axles"
    t.string "tires", default: [], array: true
    t.string "ownership"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.integer "truck_number"
    t.integer "year"
    t.string "make"
    t.string "model"
    t.string "vin"
    t.string "plates", default: [], array: true
    t.string "inspection", default: [], array: true
    t.string "insurance_exp"
    t.integer "axles"
    t.string "tires", default: [], array: true
    t.string "ownership"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.boolean "is_admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "notes", "users"
end
