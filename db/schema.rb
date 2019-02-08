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

ActiveRecord::Schema.define(version: 2019_02_07_215242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "ship_id"
    t.bigint "port_id"
    t.datetime "eta"
    t.datetime "etb"
    t.datetime "etd"
    t.string "type"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["port_id"], name: "index_appointments_on_port_id"
    t.index ["ship_id"], name: "index_appointments_on_ship_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name", null: false
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "phone"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_clients_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operations", force: :cascade do |t|
    t.bigint "appointment_id"
    t.bigint "port_id"
    t.datetime "date"
    t.string "operation"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_operations_on_appointment_id"
    t.index ["port_id"], name: "index_operations_on_port_id"
  end

  create_table "ports", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_ports_on_company_id"
  end

  create_table "ships", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_ships_on_client_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string "name", null: false
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "phone"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_workers_on_company_id"
  end

end
