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

ActiveRecord::Schema.define(version: 2021_02_14_021458) do

  create_table "players", force: :cascade do |t|
    t.string "Name"
    t.string "Team"
    t.integer "G"
    t.integer "PA"
    t.integer "HR"
    t.integer "R"
    t.integer "RBI"
    t.integer "SB"
    t.string "BB"
    t.string "K"
    t.string "ISO"
    t.string "BABIP"
    t.string "AVG"
    t.string "OBP"
    t.string "SLG"
    t.string "wOBA"
    t.string "wRC"
    t.float "EV"
    t.float "BsR"
    t.float "Off"
    t.float "Def"
    t.float "WAR"
    t.integer "playerid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
