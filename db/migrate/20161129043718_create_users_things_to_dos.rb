class CreateUsersThingsToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :users_things_to_dos do |t|
      t.integer :user_id
      t.integer :things_to_do_id

      t.timestamps
    end
  end
end
