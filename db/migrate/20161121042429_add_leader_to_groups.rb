class AddLeaderToGroups < ActiveRecord::Migration[5.0]
  def change
    add_reference :groups, :leader, foreign_key: true
  end
end
