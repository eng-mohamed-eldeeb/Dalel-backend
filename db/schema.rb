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

ActiveRecord::Schema[7.0].define(version: 2024_05_17_074428) do
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

  create_table "character_points", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "user_id", null: false
    t.integer "points"
    t.integer "tier", default: 0
    t.boolean "seen", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_points_on_character_id"
    t.index ["user_id"], name: "index_character_points_on_user_id"
  end

  create_table "character_recommendations", force: :cascade do |t|
    t.integer "level"
    t.integer "belong_to_tier"
    t.bigint "event_id", null: false
    t.boolean "seen"
    t.bigint "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_recommendations_on_character_id"
    t.index ["event_id"], name: "index_character_recommendations_on_event_id"
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
    t.integer "points", default: 0
    t.text "english_info"
    t.bigint "sub_era_id", null: false
    t.integer "tier", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_era_id"], name: "index_characters_on_sub_era_id"
  end

  create_table "era_points", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "era_id", null: false
    t.integer "points"
    t.boolean "seen", default: false
    t.integer "tier", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["era_id"], name: "index_era_points_on_era_id"
    t.index ["user_id"], name: "index_era_points_on_user_id"
  end

  create_table "eras", force: :cascade do |t|
    t.string "name"
    t.integer "tier", default: 0
    t.integer "point", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_points", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "user_id", null: false
    t.integer "points"
    t.integer "tier"
    t.boolean "seen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_points_on_event_id"
    t.index ["user_id"], name: "index_event_points_on_user_id"
  end

  create_table "event_recommendations", force: :cascade do |t|
    t.integer "level"
    t.integer "belong_to_tier"
    t.bigint "character_id", null: false
    t.boolean "seen"
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_event_recommendations_on_character_id"
    t.index ["event_id"], name: "index_event_recommendations_on_event_id"
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
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_events_on_character_id"
    t.index ["start_date"], name: "index_events_on_start_date"
    t.index ["sub_era_id"], name: "index_events_on_sub_era_id"
  end

  create_table "product_recommendations", force: :cascade do |t|
    t.float "rate"
    t.integer "level"
    t.integer "belong_to_tier"
    t.boolean "seen"
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_recommendations_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "catigory", default: 4
    t.decimal "price"
    t.string "arabic_title"
    t.string "english_title"
    t.text "english_description"
    t.text "arabic_description"
    t.integer "points", default: 0
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

  create_table "recomendations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_recommendations_id"
    t.bigint "character_recommendations_id"
    t.bigint "event_recommendations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_recommendations_id"], name: "index_recomendations_on_character_recommendations_id"
    t.index ["event_recommendations_id"], name: "index_recomendations_on_event_recommendations_id"
    t.index ["product_recommendations_id"], name: "index_recomendations_on_product_recommendations_id"
    t.index ["user_id"], name: "index_recomendations_on_user_id"
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

  create_table "saveds", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_id"
    t.bigint "character_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_saveds_on_character_id"
    t.index ["event_id"], name: "index_saveds_on_event_id"
    t.index ["product_id"], name: "index_saveds_on_product_id"
    t.index ["user_id"], name: "index_saveds_on_user_id"
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

  create_table "shopping_cart_items", force: :cascade do |t|
    t.bigint "shopping_cart_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_shopping_cart_items_on_product_id"
    t.index ["shopping_cart_id"], name: "index_shopping_cart_items_on_shopping_cart_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "sub_era_points", force: :cascade do |t|
    t.bigint "sub_era_id", null: false
    t.bigint "user_id", null: false
    t.integer "points"
    t.boolean "seen", default: false
    t.integer "tier", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_era_id"], name: "index_sub_era_points_on_sub_era_id"
    t.index ["user_id"], name: "index_sub_era_points_on_user_id"
  end

  create_table "sub_eras", force: :cascade do |t|
    t.string "arabic_name"
    t.string "english_name"
    t.text "arabic_info"
    t.integer "points", default: 0
    t.text "english_info"
    t.bigint "era_id", null: false
    t.integer "tier", default: 0
    t.integer "point", default: 0
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
  add_foreign_key "character_points", "characters"
  add_foreign_key "character_points", "users"
  add_foreign_key "character_recommendations", "characters"
  add_foreign_key "character_recommendations", "events"
  add_foreign_key "character_sections", "characters"
  add_foreign_key "characters", "sub_eras"
  add_foreign_key "era_points", "eras"
  add_foreign_key "era_points", "users"
  add_foreign_key "event_points", "events"
  add_foreign_key "event_points", "users"
  add_foreign_key "event_recommendations", "characters"
  add_foreign_key "event_recommendations", "events"
  add_foreign_key "event_sections", "events"
  add_foreign_key "events", "characters"
  add_foreign_key "events", "sub_eras"
  add_foreign_key "product_recommendations", "products"
  add_foreign_key "products", "characters"
  add_foreign_key "products", "eras"
  add_foreign_key "products", "events"
  add_foreign_key "products", "sub_eras"
  add_foreign_key "recomendations", "character_recommendations", column: "character_recommendations_id"
  add_foreign_key "recomendations", "event_recommendations", column: "event_recommendations_id"
  add_foreign_key "recomendations", "product_recommendations", column: "product_recommendations_id"
  add_foreign_key "recomendations", "users"
  add_foreign_key "reviews", "products"
  add_foreign_key "reviews", "users"
  add_foreign_key "saveds", "characters"
  add_foreign_key "saveds", "events"
  add_foreign_key "saveds", "products"
  add_foreign_key "saveds", "users"
  add_foreign_key "sections", "sub_eras"
  add_foreign_key "shopping_cart_items", "products"
  add_foreign_key "shopping_cart_items", "shopping_carts"
  add_foreign_key "shopping_carts", "users"
  add_foreign_key "sub_era_points", "sub_eras"
  add_foreign_key "sub_era_points", "users"
  add_foreign_key "sub_eras", "eras"
end
