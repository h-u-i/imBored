class CreateThingsToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :things_to_dos do |t|
      t.string :name

      t.timestamps
    end
  end
end
