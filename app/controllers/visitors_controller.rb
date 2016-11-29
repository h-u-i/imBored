require 'set'

class VisitorsController < ApplicationController

	def index
		if current_user
			@user = current_user
			render "home"
		end
	end

	def bored_update
		notification = Notification.new(:description => params[:notification][:description])
		if notification.save
			notification.users << current_user
			users = Set.new
			
		else 
			flash[:error] = "Could not create status."
		end
		redirect_to root
	end
end
