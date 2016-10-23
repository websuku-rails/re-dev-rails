class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string   "place_img"
      t.string   "name"
      t.string   "url"
      t.integer  "price"
      t.integer  "place_id"
      t.integer  "user_id"
      t.timestamps
    end
  end
end
