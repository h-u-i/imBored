class ThingsToDosController < ApplicationController
    def index
        @thingstodos = ThingsToDo.new
        @things = current_user.things_to_dos
    end

    def create
        @thingstodos = ThingsToDo.new(thingstodos_params)
        if @thingstodos.save
            @thingstodos.users << current_user
            flash[:success] = "Thing to do created!"
            redirect_to things_to_dos_path(current_user.id)
        else
            flash[:error] = "Missing information"
        end

    end
    
    def thingstodos_params
        params.require(:things_to_do).permit(:name)
    end
end
