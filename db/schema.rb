# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 0) do

  create_table "jobs", force: true do |t|
    t.text    "title"
    t.integer "job_id"
    t.text    "description"
  end

  add_index "jobs", ["job_id"], name: "index_jobs_on_job_id"

  create_table "users", force: true do |t|
    t.string  "email"
    t.string  "password"
    t.boolean "is_admin", default: false
  end

end
