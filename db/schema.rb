# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_11_30_201227) do
  create_table "active_storage_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "inquiries", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_Canadian"
    t.string "mname"
    t.text "aboutMe"
    t.text "written_english_test"
    t.date "DOB"
    t.boolean "education_one"
    t.string "education_one_level"
    t.date "education_one_start_date"
    t.date "education_one_end_date"
    t.string "education_one_degree_name"
    t.string "education_one_school_name"
    t.decimal "education_one_gpa", precision: 10
    t.boolean "education_two"
    t.string "education_two_level"
    t.date "education_two_start_date"
    t.date "education_two_end_date"
    t.string "education_two_degree_name"
    t.string "education_two_school_name"
    t.decimal "education_two_gpa", precision: 10
    t.boolean "education_three"
    t.string "education_three_level"
    t.date "education_three_start_date"
    t.date "education_three_end_date"
    t.string "education_three_degree_name"
    t.string "education_three_school_name"
    t.decimal "education_three_gpa", precision: 10
    t.bigint "user_id"
    t.string "skills"
    t.string "interests"
    t.string "job_experience"
    t.date "job_experience_one_start_date"
    t.date "job_experience_one_end_date"
    t.string "job_role"
    t.string "job_description"
    t.text "pdf_text"
    t.index ["user_id"], name: "fk_rails_7fdff2c1ec"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.string "email"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "inquiries", "users"
end
