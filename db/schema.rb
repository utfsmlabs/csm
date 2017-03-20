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

ActiveRecord::Schema.define(version: 20170313023924) do

  create_table "blocks", force: :cascade do |t|
    t.string   "name"
    t.string   "weekday"
    t.time     "start"
    t.time     "end"
    t.boolean  "meeting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.integer  "term_id"
    t.integer  "block_id"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["block_id"], name: "index_shifts_on_block_id"
    t.index ["employee_id"], name: "index_shifts_on_employee_id"
    t.index ["term_id"], name: "index_shifts_on_term_id"
  end

  create_table "terms", force: :cascade do |t|
    t.date     "start"
    t.date     "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unavailable_blocks", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "block_id"
    t.integer  "term_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["block_id"], name: "index_unavailable_blocks_on_block_id"
    t.index ["employee_id"], name: "index_unavailable_blocks_on_employee_id"
    t.index ["term_id"], name: "index_unavailable_blocks_on_term_id"
  end

end
