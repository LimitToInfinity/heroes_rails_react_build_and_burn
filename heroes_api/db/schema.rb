ActiveRecord::Schema.define(version: 2021_05_20_211128) do

  create_table "hero_powers", force: :cascade do |t|
    t.integer "power_id", null: false
    t.integer "hero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hero_id"], name: "index_hero_powers_on_hero_id"
    t.index ["power_id"], name: "index_hero_powers_on_power_id"
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.integer "weapon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["weapon_id"], name: "index_heros_on_weapon_id"
  end

  create_table "powers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "hero_powers", "heros"
  add_foreign_key "hero_powers", "powers"
  add_foreign_key "heros", "weapons"
end
