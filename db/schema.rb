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

ActiveRecord::Schema[7.0].define(version: 2023_05_18_144634) do
  create_table "developers", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_developers_on_project_id"
    t.index ["surname"], name: "index_developers_on_surname"
  end

  create_table "projects", charset: "latin1", force: :cascade do |t|
    t.string "name", null: false
    t.integer "team", null: false
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_projects_on_name", unique: true
    t.index ["team"], name: "index_projects_on_team", unique: true
  end

  add_foreign_key "developers", "projects"
end