class CreateEventsAndUserProfs < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
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
      t.string   "name"
      t.integer  "age"
      t.integer  "gender"
      t.string   "introduction"
      t.integer  "user_id"
      t.integer  "user_id"
      t.timestamps
    end

    create_table :events_user_profs, id: false do |t|
      t.belongs_to :event
      t.belongs_to :user_prof
    end
  end
end