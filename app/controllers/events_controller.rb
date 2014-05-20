class EventsController < ApplicationController
  def index
    @events = current_user.events
  end
  
  def create
    @event = current_user.events.new(safe_params)
    if @event.save
      respond_to do |format|
        @messages = {:success=>"successfully created the new board"}
        format.js
      end
    else
      respond_to do |format|
        format.js{
          @messages = {:errors=>@event.errors.full_messages}
          render 'save_failed'
        }
      end
    end
  end
  
  private
    def safe_params
      params.require(:event).permit(:name, :due_date, :description)
    end
end
