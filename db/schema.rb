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

ActiveRecord::Schema[7.0].define(version: 2022_08_13_200917) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_data", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carriers", force: :cascade do |t|
    t.integer "source_id"
    t.string "company_name"
    t.string "company_address"
    t.string "company_address_2"
    t.string "company_city"
    t.string "company_state"
    t.string "company_zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer "source_id"
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "division"
    t.integer "major_group"
    t.integer "industry_group"
    t.integer "SIC"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "policies", force: :cascade do |t|
    t.integer "source_id"
    t.string "policy_type"
    t.string "division"
    t.string "effective_date"
    t.string "expiration_date"
    t.integer "written_premium"
    t.integer "carrier_policy_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "carrier_id"
    t.integer "client_id"
  end

end
