class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string   "date"
      t.string   "title"
      t.string   "body"
      t.integer  "event_id"
      t.integer  "user_id"
      t.timestamps
    end
  end
end
