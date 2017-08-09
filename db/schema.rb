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

ActiveRecord::Schema.define(version: 20170809191451) do

  create_table "donations", force: :cascade do |t|
    t.integer "amount"
    t.string "message", default: "You rock! Keep dancing, FTK!!"
    t.integer "donor_id"
    t.integer "dancer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dancer_id"], name: "index_donations_on_dancer_id"
    t.index ["donor_id"], name: "index_donations_on_donor_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "bio", default: "Support our team in our journey to dance and raise money FTK!"
    t.string "photo", default: "https://assets.donordrive.com/clients/cmndancemarathon/img/avatar-team-default.gif"
    t.integer "goal", default: 10000
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "fake@fake.com"
    t.integer "zip", default: 32304
    t.string "photo", default: "https://assets.donordrive.com/clients/cmndancemarathon/img/avatar-team-default.gif"
    t.string "bio", default: "I hope you will consider supporting my participation in this event. All contributions will benefit my local Children's Miracle Network Hospital. Any contribution will help, and all donations are tax deductible."
    t.integer "goal", default: 1000
    t.boolean "team_captain", default: false
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_users_on_team_id"
  end

end
