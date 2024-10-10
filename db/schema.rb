ActiveRecord::Schema[7.2].define(version: 2024_10_10_052935) do
  create_table "todos", force: :cascade do |t|
    t.string "name"
    t.boolean "complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.boolean "completed", default: false
  end
end
