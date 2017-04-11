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

ActiveRecord::Schema.define(version: 20170411105551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer  "patient_id"
    t.date     "start_date"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "confirmed"
    t.string   "doctor"
    t.index ["patient_id"], name: "index_appointments_on_patient_id", using: :btree
  end

  create_table "avail_services", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "service_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "appointment_id"
    t.index ["appointment_id"], name: "index_avail_services_on_appointment_id", using: :btree
    t.index ["patient_id"], name: "index_avail_services_on_patient_id", using: :btree
    t.index ["service_id"], name: "index_avail_services_on_service_id", using: :btree
  end

  create_table "boarding_bookings", force: :cascade do |t|
    t.integer  "patient_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_boarding_bookings_on_patient_id", using: :btree
  end

  create_table "breeds", force: :cascade do |t|
    t.string   "name"
    t.integer  "kind_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["kind_id"], name: "index_breeds_on_kind_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.string   "commentable_type"
    t.integer  "commentable_id"
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "done_vaccinations", force: :cascade do |t|
    t.integer  "vaccination_id"
    t.integer  "patient_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["patient_id"], name: "index_done_vaccinations_on_patient_id", using: :btree
    t.index ["vaccination_id"], name: "index_done_vaccinations_on_vaccination_id", using: :btree
  end

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "patient_id"
    t.boolean  "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_invoices_on_patient_id", using: :btree
    t.index ["user_id"], name: "index_invoices_on_user_id", using: :btree
  end

  create_table "kinds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "breed_id"
    t.integer  "gender_id"
    t.text     "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.date     "birth_date"
    t.index ["breed_id"], name: "index_patients_on_breed_id", using: :btree
    t.index ["gender_id"], name: "index_patients_on_gender_id", using: :btree
    t.index ["user_id"], name: "index_patients_on_user_id", using: :btree
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string   "name"
    t.string   "prescription_frequency"
    t.integer  "test_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["test_id"], name: "index_prescriptions_on_test_id", using: :btree
  end

  create_table "results", force: :cascade do |t|
    t.string   "name"
    t.decimal  "normal_low"
    t.decimal  "normal_high"
    t.integer  "test_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.decimal  "result_value"
    t.index ["test_id"], name: "index_results_on_test_id", using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "minute_to_finish"
  end

  create_table "services_to_dos", force: :cascade do |t|
    t.integer  "service_id"
    t.boolean  "done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "invoice_id"
    t.index ["invoice_id"], name: "index_services_to_dos_on_invoice_id", using: :btree
    t.index ["service_id"], name: "index_services_to_dos_on_service_id", using: :btree
  end

  create_table "tests", force: :cascade do |t|
    t.string   "name"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "diagnosis"
    t.text     "prognosis"
    t.index ["patient_id"], name: "index_tests_on_patient_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "contact_number"
    t.text     "address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vaccinations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "weights", force: :cascade do |t|
    t.decimal  "kilograms"
    t.boolean  "current"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_weights_on_patient_id", using: :btree
  end

  add_foreign_key "appointments", "patients"
  add_foreign_key "avail_services", "appointments"
  add_foreign_key "avail_services", "patients"
  add_foreign_key "avail_services", "services"
  add_foreign_key "boarding_bookings", "patients"
  add_foreign_key "breeds", "kinds"
  add_foreign_key "comments", "users"
  add_foreign_key "done_vaccinations", "patients"
  add_foreign_key "done_vaccinations", "vaccinations"
  add_foreign_key "invoices", "patients"
  add_foreign_key "invoices", "users"
  add_foreign_key "patients", "breeds"
  add_foreign_key "patients", "genders"
  add_foreign_key "patients", "users"
  add_foreign_key "prescriptions", "tests"
  add_foreign_key "results", "tests"
  add_foreign_key "services_to_dos", "invoices"
  add_foreign_key "services_to_dos", "services"
  add_foreign_key "tests", "patients"
  add_foreign_key "weights", "patients"
end
