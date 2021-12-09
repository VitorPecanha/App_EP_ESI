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

ActiveRecord::Schema.define(version: 2021_12_09_053410) do

  create_table "passwords", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plants", force: :cascade do |t|
    t.integer "plant_id"
    t.string "plant_name"
    t.integer "water_hour_interval"
    t.integer "fertilizer_hour_interval"
    t.boolean "prunning"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_session_id"
    t.index ["user_session_id"], name: "index_plants_on_user_session_id"
  end

  create_table "plants_user_sessions", force: :cascade do |t|
    t.integer "user_session_id", null: false
    t.integer "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_plants_user_sessions_on_plant_id"
    t.index ["user_session_id"], name: "index_plants_user_sessions_on_user_session_id"
  end

  create_table "user_sessions", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_user_sessions_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_sessions_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "user_first_name"
    t.string "user_last_name"
    t.string "user_cpf"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password"
    t.string "user_email"
    t.index ["user_email"], name: "index_users_on_user_email", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "nome_da_planta"
    t.string "nome_do_video"
    t.string "provedor"
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "plants_user_sessions", "plants"
  add_foreign_key "plants_user_sessions", "user_sessions"
end
