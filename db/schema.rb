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

ActiveRecord::Schema.define(version: 20190314151444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.bigint "product_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_images_on_product_id"
  end

  create_table "likeds", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_likeds_on_product_id"
    t.index ["user_id"], name: "index_likeds_on_user_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "name", null: false
    t.text "profile"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_offices_on_email", unique: true
  end

  create_table "product_terms", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "term_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_terms_on_product_id"
    t.index ["term_id"], name: "index_product_terms_on_term_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "deposit"
    t.string "reward"
    t.float "area"
    t.bigint "structure_id"
    t.bigint "type_id"
    t.string "address"
    t.bigint "office_id"
    t.integer "m_fees"
    t.float "rent"
    t.string "floor"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["office_id"], name: "index_products_on_office_id"
    t.index ["structure_id"], name: "index_products_on_structure_id"
    t.index ["type_id"], name: "index_products_on_type_id"
  end

  create_table "structures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_term_lists", force: :cascade do |t|
    t.bigint "user_term_id"
    t.bigint "term_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["term_id"], name: "index_user_term_lists_on_term_id"
    t.index ["user_term_id"], name: "index_user_term_lists_on_user_term_id"
  end

  create_table "user_terms", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_terms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "name", null: false
    t.text "profile"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "images", "products"
  add_foreign_key "likeds", "products"
  add_foreign_key "likeds", "users"
  add_foreign_key "product_terms", "products"
  add_foreign_key "product_terms", "terms"
  add_foreign_key "products", "offices"
  add_foreign_key "products", "structures"
  add_foreign_key "products", "types"
  add_foreign_key "user_term_lists", "terms"
  add_foreign_key "user_term_lists", "user_terms"
  add_foreign_key "user_terms", "users"
end
