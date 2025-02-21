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

ActiveRecord::Schema.define(version: 2019_08_07_223135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "surveys", force: :cascade do |t|
    t.string "location"
    t.integer "reservation_number"
    t.string "date_of_survey"
    t.integer "professional_associates"
    t.integer "prompt_response"
    t.integer "appropriate_recommendation"
    t.integer "appropriate_instruction_paperwork"
    t.integer "move_in_experience"
    t.integer "clean_and_comfortable"
    t.integer "appropriate_furnishing"
    t.integer "bed_and_bedding"
    t.integer "would_use_again"
    t.integer "would_recommend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
