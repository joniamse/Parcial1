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

ActiveRecord::Schema.define(version: 2020_05_13_194010) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "club_directors", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "member_id", null: false
    t.index ["member_id"], name: "index_club_directors_on_member_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "slogan"
    t.datetime "fundation"
    t.text "addres"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "club_director_id", null: false
    t.index ["club_director_id"], name: "index_clubs_on_club_director_id"
  end

  create_table "honors", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.text "requirements"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_honors_on_category_id"
  end

  create_table "member_honors", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "honor_id", null: false
    t.integer "member_id", null: false
    t.index ["honor_id"], name: "index_member_honors_on_honor_id"
    t.index ["member_id"], name: "index_member_honors_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "document_number"
    t.datetime "birth_date"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "unit_id", null: false
    t.index ["unit_id"], name: "index_members_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.text "motto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "club_directors", "members"
  add_foreign_key "clubs", "club_directors"
  add_foreign_key "honors", "categories"
  add_foreign_key "member_honors", "honors"
  add_foreign_key "member_honors", "members"
  add_foreign_key "members", "units"
end
