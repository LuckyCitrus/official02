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

ActiveRecord::Schema.define(version: 2020_03_16_054419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "country_id"
    t.bigint "customerstatus_id"
    t.bigint "customertype_id"
    t.index ["country_id"], name: "index_customers_on_country_id"
    t.index ["customerstatus_id"], name: "index_customers_on_customerstatus_id"
    t.index ["customertype_id"], name: "index_customers_on_customertype_id"
  end

  create_table "customerstatuses", force: :cascade do |t|
    t.string "customerstatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customertypes", force: :cascade do |t|
    t.string "customertype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hellos", force: :cascade do |t|
    t.string "world"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.integer "lotstock"
    t.integer "quantity"
    t.decimal "price"
    t.decimal "total"
    t.bigint "orderstatus_id", null: false
    t.bigint "picture_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["orderstatus_id"], name: "index_orders_on_orderstatus_id"
    t.index ["picture_id"], name: "index_orders_on_picture_id"
  end

  create_table "orderstatuses", force: :cascade do |t|
    t.string "customertype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.binary "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "customers", "countries"
  add_foreign_key "customers", "customerstatuses"
  add_foreign_key "customers", "customertypes"
  add_foreign_key "orders", "orderstatuses"
  add_foreign_key "orders", "pictures"
end
