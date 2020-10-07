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

ActiveRecord::Schema.define(version: 2020_10_05_141434) do

  create_table "dependents", force: :cascade do |t|
    t.string "relationship"
    t.string "d_name"
    t.string "d_email"
    t.string "d_contact"
    t.string "d_blood_group"
    t.date "d_date_of_birth"
    t.string "weight"
    t.string "height"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dependents_on_user_id"
  end

  create_table "medical_histories", force: :cascade do |t|
    t.string "illness"
    t.string "drname"
    t.string "medicine"
    t.date "startdate"
    t.date "enddate"
    t.string "dosage_amount"
    t.string "dosage_frequency"
    t.string "dosage_time"
    t.boolean "email_notify"
    t.integer "user_id", null: false
    t.integer "dependent_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dependent_id"], name: "index_medical_histories_on_dependent_id"
    t.index ["user_id"], name: "index_medical_histories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "contact"
    t.string "country"
    t.date "date_of_birth"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dependents", "users"
  add_foreign_key "medical_histories", "dependents"
  add_foreign_key "medical_histories", "users"
end
