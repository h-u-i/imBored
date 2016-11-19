class Group < ApplicationRecord
	has_and_belongs_to_many :users, :join_table => :users_groups
	validates :name, presence: true
	validates_length_of :description, :maximum => 150
end
