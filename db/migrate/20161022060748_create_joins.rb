class CreateJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :joins do |t|
      t.integer :user_prof_id
      t.integer :event_id
      t.timestamps
    end
  end
end
