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

ActiveRecord::Schema.define(version: 2023_06_01_213835) do

  create_table "genres", force: :cascade do |t|
    t.string "category"
  end

  create_table "shows", force: :cascade do |t|
    t.integer "genre_id"
    t.string "title"
    t.integer "seasons"
    t.integer "number_of_episodes"
    t.string "original_language"
    t.boolean "ongoing"
    t.index ["genre_id"], name: "index_shows_on_genre_id"
  end

end