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

ActiveRecord::Schema.define(version: 2020_08_04_180758) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "appreciations", force: :cascade do |t|
    t.integer "appreciation_kind", null: false
    t.string "donor_fullname", null: false
    t.string "donor_occupation", null: false
    t.text "donor_message", null: false
    t.integer "coffees_quantity"
    t.float "hug_seconds"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_appreciations_on_user_id"
  end

  create_table "monetary_accounts", force: :cascade do |t|
    t.string "entity", null: false
    t.string "account_email", null: false
    t.string "identification"
    t.string "account_kind"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "account_number"
    t.index ["user_id"], name: "index_monetary_accounts_on_user_id"
  end

  create_table "multipliers", force: :cascade do |t|
    t.integer "quantity"
    t.integer "profile_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_multipliers_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "fullname", null: false
    t.string "occupation", null: false
    t.text "biography", null: false
    t.decimal "coffee_price", null: false
    t.string "currency_sign", null: false
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_published", default: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "publications", force: :cascade do |t|
    t.text "subtitle", null: false
    t.integer "profile_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_publications_on_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appreciations", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "monetary_accounts", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "multipliers", "profiles", on_update: :cascade, on_delete: :cascade
  add_foreign_key "profiles", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "publications", "profiles", on_update: :cascade, on_delete: :cascade
end
