class AddCreatorToNotifications < ActiveRecord::Migration[5.0]
  def change
    add_column :notifications, :creator, :string
  end
end
