class GroupPolicy < ApplicationPolicy
	attr_reader :user, :group

	def initialize(user, group)
		@user = user
		@group = group
	end

	def destroy?
		group.leader == user
	end

	def update?
		group.leader == user
	end
end