require 'set'

class VisitorsController < ApplicationController

	def index
		if current_user
			@user = current_user
			render "home"
		end
	end

	def bored_update
		notification = Notification.new(bored_params.merge(:creator => current_user.name))
		if notification.save
			users = Set.new
			groups = params[:group][:groups]

			if !groups.nil?
				groups.drop(1).each do |group_id|
					group = Group.find(group_id)
					users.merge(group.users.all)
				end
				users.each do |user|
					notification.users << user
				end
			else
				notification.users << current_user # Only send status to self
			end
		else 
			flash[:error] = "Could not create status."
		end
		redirect_to root_path
	end

	def bored_params
		params.require(:notification).permit(:description)
	end
end
