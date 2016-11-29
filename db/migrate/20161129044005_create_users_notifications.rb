class CreateUsersNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :users_notifications do |t|
      t.references :user, foreign_key: true
      t.references :notifications, foreign_key: true
    end
  end
end
