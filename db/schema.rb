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

ActiveRecord::Schema[7.0].define(version: 2023_06_14_182301) do
  create_table "events", force: :cascade do |t|
    t.text "location"
    t.float "latitude"
    t.float "longitude"
    t.boolean "rejected"
    t.boolean "delisted"
    t.boolean "approved"
    t.text "logo_url"
    t.text "banner_url"
    t.boolean "wants_postcards"
    t.text "mailing_address"
    t.boolean "subscriber_email_sent"
    t.text "contact_email"
    t.text "contact_name"
    t.text "event_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "virtual"
  end

  create_table "subscribers", force: :cascade do |t|
    t.text "email"
    t.text "location"
    t.datetime "unsubscribed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

end
