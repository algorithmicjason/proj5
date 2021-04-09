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

ActiveRecord::Schema.define(version: 2021_04_09_025658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "folders", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_folders_on_user_id"
  end

  create_table "thoughts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image"
    t.bigint "folder_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["folder_id"], name: "index_thoughts_on_folder_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "image", default: "https://lh3.googleusercontent.com/proxy/5T_v4ICErxi5C362lU20zJneO1mrEi-jK_QKQFMQduWCdPqWenn1sy4Y-wWpzkU-7DTsy0CAreQo2lWkUj-d0QWYyzmpUMo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "folders", "users"
  add_foreign_key "thoughts", "folders"
end