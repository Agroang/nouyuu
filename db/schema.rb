# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_22_094420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crops", force: :cascade do |t|
    t.string "name"
    t.string "plant_type"
    t.string "plant_family"
    t.text "description"
    t.string "image_url"
    t.integer "days_to_harvest"
    t.integer "growing_season"
    t.integer "spacing_in_cm"
    t.integer "planting_depth_in_cm"
    t.boolean "climber"
    t.string "sun_exposure"
    t.string "water_needs"
    t.string "nitrogen_needs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gardens", force: :cascade do |t|
    t.integer "height"
    t.integer "width"
    t.string "location"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_gardens_on_user_id"
  end

  create_table "plots", force: :cascade do |t|
    t.string "name"
    t.integer "days_since_watering"
    t.bigint "garden_id", null: false
    t.bigint "crop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crop_id"], name: "index_plots_on_crop_id"
    t.index ["garden_id"], name: "index_plots_on_garden_id"
  end

  create_table "tiles", force: :cascade do |t|
    t.boolean "shaded"
    t.integer "nitrogen_balance"
    t.integer "x_position"
    t.integer "y_position"
    t.bigint "garden_id", null: false
    t.bigint "plot_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garden_id"], name: "index_tiles_on_garden_id"
    t.index ["plot_id"], name: "index_tiles_on_plot_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "display_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "gardens", "users"
  add_foreign_key "plots", "crops"
  add_foreign_key "plots", "gardens"
  add_foreign_key "tiles", "gardens"
  add_foreign_key "tiles", "plots"
end
