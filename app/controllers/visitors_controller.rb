class VisitorsController < ApplicationController

	def index
		if current_user
			@user = current_user
			render "home"
		end
	end

end
