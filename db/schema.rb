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

ActiveRecord::Schema[7.0].define(version: 2024_04_26_165934) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
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

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "character_sections", force: :cascade do |t|
    t.text "arabic_content"
    t.text "english_content"
    t.string "arabic_title"
    t.string "english_title"
    t.bigint "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_sections_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "arabic_name"
    t.string "english_name"
    t.date "date_of_birth"
    t.date "date_of_death"
    t.text "arabic_info"
    t.text "english_info"
    t.bigint "sub_era_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_era_id"], name: "index_characters_on_sub_era_id"
  end

  create_table "eras", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_sections", force: :cascade do |t|
    t.text "arabic_content"
    t.text "english_content"
    t.string "arabic_title"
    t.string "english_title"
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_sections_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "type"
    t.string "arabic_title"
    t.string "english_title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "arabic_info"
    t.text "english_info"
    t.bigint "sub_era_id"
    t.bigint "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_events_on_character_id"
    t.index ["start_date"], name: "index_events_on_start_date"
    t.index ["sub_era_id"], name: "index_events_on_sub_era_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "catigory", default: 4
    t.decimal "price"
    t.string "arabic_title"
    t.string "english_title"
    t.text "english_description"
    t.text "arabic_description"
    t.integer "tier", default: 2
    t.integer "number_of_sales", default: 0
    t.bigint "era_id", null: false
    t.bigint "sub_era_id"
    t.bigint "character_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_products_on_character_id"
    t.index ["era_id"], name: "index_products_on_era_id"
    t.index ["event_id"], name: "index_products_on_event_id"
    t.index ["sub_era_id"], name: "index_products_on_sub_era_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comment"
    t.integer "stars"
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_reviews_on_product_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "sections", force: :cascade do |t|
    t.text "arabic_content"
    t.text "english_content"
    t.string "arabic_title"
    t.string "english_title"
    t.bigint "sub_era_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_era_id"], name: "index_sections_on_sub_era_id"
  end

  create_table "sub_eras", force: :cascade do |t|
    t.string "arabic_name"
    t.string "english_name"
    t.text "arabic_info"
    t.text "english_info"
    t.bigint "era_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["era_id"], name: "index_sub_eras_on_era_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "uid"
    t.string "provider"
    t.string "name"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "character_sections", "characters"
  add_foreign_key "characters", "sub_eras"
  add_foreign_key "event_sections", "events"
  add_foreign_key "events", "characters"
  add_foreign_key "events", "sub_eras"
  add_foreign_key "products", "characters"
  add_foreign_key "products", "eras"
  add_foreign_key "products", "events"
  add_foreign_key "products", "sub_eras"
  add_foreign_key "reviews", "products"
  add_foreign_key "reviews", "users"
  add_foreign_key "sections", "sub_eras"
  add_foreign_key "sub_eras", "eras"
end
