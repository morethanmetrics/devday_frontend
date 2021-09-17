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

ActiveRecord::Schema.define(version: 2021_09_17_155756) do

  create_table "projects", force: :cascade do |t|
    t.string "title", limit: 255
    t.text "description", limit: 4294967295
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "color", limit: 255
  end

  create_table "tag_associations", force: :cascade do |t|
    t.datetime "created_at"
    t.string "tagable_type"
    t.integer "tagable_id"
    t.integer "tag_id"
    t.index ["tag_id"], name: "index_tag_associations_on_tag_id"
    t.index ["tagable_type", "tagable_id"], name: "index_tag_associations_on_tagable"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "tag_associations", "tags"
end
