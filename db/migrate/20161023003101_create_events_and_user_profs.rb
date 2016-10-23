class CreateEventsAndUserProfs < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string   "event_img"
      t.date     "date"
      t.datetime "time"
      t.string   "title"
      t.string   "body"
      t.integer  "event_id"
      t.integer  "user_prof_id"
      t.integer  "user_id"
      t.timestamps
    end

    create_table :user_profs do |t|
      t.string   "user_prof_img"
      t.string   "name"
      t.integer  "age"
      t.integer  "gender"
      t.string   "introduction"
      t.integer  "event_id"
      t.integer  "user_id"
      t.timestamps
    end
  end
end
