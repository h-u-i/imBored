class EventsController < ApplicationController

  def index
      @events = Event.all
  end
 
  def new
      @event = Event.new
  end

  def create
      @event = Event.new(event_params)
      if @event.save
            flash[:success] = "Event created!"

            # start daryus email edits: 
            # UserMailer.welcome_email(current_user).deliver
            # ExampleMailer.sample_email(current_user).deliver
            # end daryus email edits.

            redirect_to events_path(current_user.id)


      else
            flash[:error] = "Missing information"
            render :new
      end
  end

  def event_params
      params.require(:event).permit(:name, :month, :day, :year)
  end

  def join
      event = Event.find(params[:event_id])
      if not event.users.include? current_user
          event.users << current_user
          flash[:success] = "Joined event!"
      else
          flash[:error] = "Already joined"
      end
      redirect_to "/events"
  end
end
