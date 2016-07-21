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

ActiveRecord::Schema.define(version: 20160720180014) do

  create_table "admins", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.date     "hired_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "work_group_id"
    t.         "password"
    t.string   "password_digest"
    t.index ["work_group_id"], name: "index_employees_on_work_group_id"
  end

  create_table "pay_periods", force: :cascade do |t|
    t.boolean  "completed"
    t.datetime "completed_date"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "employee_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["employee_id"], name: "index_pay_periods_on_employee_id"
  end

  create_table "work_days", force: :cascade do |t|
    t.date     "date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "day"
    t.float    "over_time"
    t.float    "regular"
    t.float    "vacation"
    t.float    "sick_leave"
    t.float    "non_paid_leave"
    t.float    "maternity_leave"
    t.         "pay_period"
    t.integer  "pay_period_id"
    t.float    "daily_total"
    t.index ["pay_period_id"], name: "index_work_days_on_pay_period_id"
  end

  create_table "work_groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "work_hours", force: :cascade do |t|
    t.string   "type"
    t.float    "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
