# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  leader_id   :integer
#

class Group < ApplicationRecord
	has_and_belongs_to_many :users, :join_table => :users_groups
	before_destroy { users.clear }
	belongs_to :leader, :class_name => "User"

	validates :name, presence: true
	validates_length_of :description, :maximum => 300
end
