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

ActiveRecord::Schema.define(version: 2020_04_14_083654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "auctions", force: :cascade do |t|
    t.string "auctionname"
    t.string "address"
    t.bigint "location_id", default: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_auctions_on_location_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "vinnumber"
    t.integer "year"
    t.string "make"
    t.string "model"
    t.bigint "titlestatus_id", default: 1, null: false
    t.bigint "keystatus_id", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", default: 1
    t.index ["keystatus_id"], name: "index_cars_on_keystatus_id"
    t.index ["order_id"], name: "index_cars_on_order_id"
    t.index ["titlestatus_id"], name: "index_cars_on_titlestatus_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "companyname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "containers", force: :cascade do |t|
    t.bigint "company_id", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "shipment_id", default: 1
    t.string "containernum"
    t.index ["company_id"], name: "index_containers_on_company_id"
    t.index ["shipment_id"], name: "index_containers_on_shipment_id"
  end

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
    t.bigint "country_id", default: 1
    t.bigint "customerstatus_id", default: 1
    t.bigint "customertype_id", default: 1
    t.bigint "user_id", default: 1
    t.index ["country_id"], name: "index_customers_on_country_id"
    t.index ["customerstatus_id"], name: "index_customers_on_customerstatus_id"
    t.index ["customertype_id"], name: "index_customers_on_customertype_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
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

  create_table "departments", force: :cascade do |t|
    t.string "departmentname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "company_id"
    t.index ["company_id"], name: "index_departments_on_company_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "empfname"
    t.string "emplname"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.string "title"
    t.date "hiredate"
    t.bigint "department_id", default: 1, null: false
    t.bigint "employeestatus_id", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", default: 1
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["employeestatus_id"], name: "index_employees_on_employeestatus_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "employeestatuses", force: :cascade do |t|
    t.string "employeestatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", default: 1
    t.index ["order_id"], name: "index_images_on_order_id"
    t.index ["user_id"], name: "index_images_on_user_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.date "invoicedate"
    t.date "duedate"
    t.bigint "customer_id", default: 1, null: false
    t.bigint "employee_id", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "invoicestatus_id", default: 1
    t.decimal "amountdue"
    t.integer "invoicenum", default: -> { "nextval('invoicenum_seq'::regclass)" }
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
    t.index ["employee_id"], name: "index_invoices_on_employee_id"
    t.index ["invoicestatus_id"], name: "index_invoices_on_invoicestatus_id"
  end

  create_table "invoiceshipments", force: :cascade do |t|
    t.bigint "shipment_id", default: 1, null: false
    t.bigint "invoice_id", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_invoiceshipments_on_invoice_id"
    t.index ["shipment_id"], name: "index_invoiceshipments_on_shipment_id"
  end

  create_table "invoicestatuses", force: :cascade do |t|
    t.string "invoicestatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "keystatuses", force: :cascade do |t|
    t.string "keystatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.integer "lotstock"
    t.integer "quantity"
    t.decimal "price"
    t.decimal "total"
    t.bigint "orderstatus_id", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_id", default: 1
    t.integer "ordernum", default: -> { "nextval('ordernum_seq'::regclass)" }
    t.bigint "invoice_id"
    t.bigint "container_id"
    t.bigint "auction_id"
    t.index ["auction_id"], name: "index_orders_on_auction_id"
    t.index ["container_id"], name: "index_orders_on_container_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["invoice_id"], name: "index_orders_on_invoice_id"
    t.index ["orderstatus_id"], name: "index_orders_on_orderstatus_id"
  end

  create_table "orderstatuses", force: :cascade do |t|
    t.string "orderstatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "paymentmethods", force: :cascade do |t|
    t.string "paymenttype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.date "date"
    t.decimal "amount"
    t.bigint "paymentstatus_id", default: 1, null: false
    t.bigint "paymentmethod_id", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_id"
    t.bigint "invoice_id"
    t.integer "paymentnum", default: -> { "nextval('paymentnum_seq'::regclass)" }
    t.index ["customer_id"], name: "index_payments_on_customer_id"
    t.index ["invoice_id"], name: "index_payments_on_invoice_id"
    t.index ["paymentmethod_id"], name: "index_payments_on_paymentmethod_id"
    t.index ["paymentstatus_id"], name: "index_payments_on_paymentstatus_id"
  end

  create_table "paymentstatuses", force: :cascade do |t|
    t.string "paymentstatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shipmentmethods", force: :cascade do |t|
    t.string "shipmentmethod"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.date "date"
    t.integer "quantity"
    t.bigint "warehouse_id", default: 1, null: false
    t.bigint "shipmentmethod_id", default: 1, null: false
    t.bigint "shipmentstatus_id", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "shipmentnum"
    t.index ["shipmentmethod_id"], name: "index_shipments_on_shipmentmethod_id"
    t.index ["shipmentstatus_id"], name: "index_shipments_on_shipmentstatus_id"
    t.index ["warehouse_id"], name: "index_shipments_on_warehouse_id"
  end

  create_table "shipmentstatuses", force: :cascade do |t|
    t.string "shipmentstatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "titlestatuses", force: :cascade do |t|
    t.string "titlestatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.integer "role"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "warehousename"
    t.bigint "location_id", default: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_warehouses_on_location_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "auctions", "locations"
  add_foreign_key "cars", "keystatuses"
  add_foreign_key "cars", "orders"
  add_foreign_key "cars", "titlestatuses"
  add_foreign_key "containers", "companies"
  add_foreign_key "containers", "shipments"
  add_foreign_key "customers", "countries"
  add_foreign_key "customers", "customerstatuses"
  add_foreign_key "customers", "customertypes"
  add_foreign_key "customers", "users"
  add_foreign_key "departments", "companies"
  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "employeestatuses"
  add_foreign_key "employees", "users"
  add_foreign_key "images", "orders"
  add_foreign_key "images", "users"
  add_foreign_key "invoices", "customers"
  add_foreign_key "invoices", "employees"
  add_foreign_key "invoices", "invoicestatuses"
  add_foreign_key "invoiceshipments", "invoices"
  add_foreign_key "invoiceshipments", "shipments"
  add_foreign_key "orders", "auctions"
  add_foreign_key "orders", "containers"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "invoices"
  add_foreign_key "orders", "orderstatuses"
  add_foreign_key "payments", "customers"
  add_foreign_key "payments", "invoices"
  add_foreign_key "payments", "paymentmethods"
  add_foreign_key "payments", "paymentstatuses"
  add_foreign_key "shipments", "shipmentmethods"
  add_foreign_key "shipments", "shipmentstatuses"
  add_foreign_key "shipments", "warehouses"
  add_foreign_key "warehouses", "locations"

  create_view "active_invoices", materialized: true, sql_definition: <<-SQL
      SELECT DISTINCT (((cus.first_name)::text || ' '::text) || (cus.last_name)::text) AS name,
      cus.email,
      i.invoicenum,
      i.invoicedate,
      ist.invoicestatus
     FROM ((((((customers cus
       JOIN orders o ON ((cus.id = o.customer_id)))
       JOIN orderstatuses os ON ((os.id = o.orderstatus_id)))
       JOIN payments p ON ((cus.id = p.customer_id)))
       JOIN paymentstatuses ps ON ((ps.id = p.paymentstatus_id)))
       JOIN invoices i ON ((i.customer_id = cus.id)))
       JOIN invoicestatuses ist ON ((ist.id = i.invoicestatus_id)))
    WHERE (((ist.invoicestatus)::text <> 'Paid
  '::text) AND ((ps.paymentstatus)::text <> 'Paid'::text) AND (i.invoicedate > (CURRENT_DATE - '1 mon'::interval)))
    ORDER BY i.invoicedate;
  SQL
end
