class GroupsController < ApplicationController

	def index
		if current_user.nil?
			flash[:error] = "You must be logged in to see groups."
			redirect_to "/users/sign_in"
		else
			@groups = Group.all
		end
	end

	def show
		@group = Group.find(params[:id])
		if @group.nil?
			flash[:error] = "Group no longer exists."
			redirect_to groups_path()
		end
	end

	def create
		if current_user
			group = Group.create(:name => params[:group][:name], :description => params[:group][:description])
			group.users << current_user
			flash[:success] = "Group created!"
			redirect_to groups_path()
		else
			flash[:error] = "You must be logged in to create a group."
			redirect_to "/users/sign_in"
		end
	end
	
	def join
		group = Group.find(params[:group_id])
		if current_user
			if not group.users.include? current_user
				group.users << current_user
				flash[:success] = "Successfully joined group #{group.name}!"
			else
				flash[:error] = "You are already part of this group."
			end
		else
			flash[:alert] = "You must be logged in to join a group."
			redirect_to "/users/sign_in"
		end
		redirect_to(:back)
	end

	def leave
		group = Group.find(params[:group_id])
		if current_user
			if group.users.include? current_user
				flash[:success] = "Successfully left group #{group.name}."
				group.users.delete(current_user)
			else
				flash[:error] = "You are not a part of this group."
			end
		else
			flash[:alert] = "You must be logged in."
		end
		redirect_to groups_path()
	end
end
