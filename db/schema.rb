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

ActiveRecord::Schema[7.0].define(version: 2023_12_16_111151) do
  create_table "cities", force: :cascade do |t|
    t.string "name_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name_employee"
    t.integer "city_id", null: false
    t.integer "function_id", null: false
    t.integer "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_employees_on_city_id"
    t.index ["function_id"], name: "index_employees_on_function_id"
    t.index ["state_id"], name: "index_employees_on_state_id"
  end

  create_table "functions", force: :cascade do |t|
    t.string "name_function"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "cities"
  add_foreign_key "employees", "functions"
  add_foreign_key "employees", "states"
end
