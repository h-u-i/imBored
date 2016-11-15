class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :month
      t.integer :day
      t.integer :year
      t.integer :user_id

      t.timestamps
    end
  end
end
