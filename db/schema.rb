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

ActiveRecord::Schema.define(version: 2020_04_27_200030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "call_logs", id: false, force: :cascade do |t|
    t.date "latest_attempt_date"
    t.text "original_triage_status"
    t.text "original_triage_call_notes"
    t.text "food_need"
    t.text "callback_need"
    t.text "remaining_needs"
    t.text "call_log"
    t.integer "contact_id"
    t.string "status", default: "awaiting_review", null: false
  end

  create_table "needs", id: false, force: :cascade do |t|
    t.bigint "id"
    t.bigint "contact_id"
    t.bigint "user_id"
    t.string "name"
    t.datetime "completed_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "category"
    t.boolean "is_urgent"
    t.datetime "start_on"
    t.jsonb "supplemental_data"
    t.text "assigned_to"
    t.text "author"
  end

  create_table "notes", id: false, force: :cascade do |t|
    t.bigint "id"
    t.text "body"
    t.bigint "need_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "user_id"
    t.string "category"
    t.jsonb "import_data"
    t.string "need_category"
  end

end
