class CreateUserProfs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profs do |t|

      t.timestamps
    end
  end
end
