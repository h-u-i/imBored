# == Schema Information
#
# Table name: notifications
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Notification < ApplicationRecord
	has_and_belongs_to_many :users, :join_table => :users_notifications

end
