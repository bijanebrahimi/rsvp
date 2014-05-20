class EventsController < ApplicationController
  before_action :set_event, :except=>[:new, :create, :index]

  def index
    @events = current_user.events
  end
  
  def create
    @event = current_user.events.new(safe_params)
    if @event.save
      respond_to do |format|
        @messages = {:success=>"successfully created the new Event"}
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
  
  def update
    if @event.update(safe_params)
      respond_to do |format|
        @messages = {:success=>"successfully Updated the Event"}
        format.js
      end
    else
      respond_to do |format|
        format.js{
          @messages = {:errors=>@event.errors.full_messages}
          render 'update_failed'
        }
      end
    end
  end
  
  def show
  
  end
  
  private
    def safe_params
      params.require(:event).permit(:name, :due_date, :description)
    end
    def set_event
      @event = current_user.events.find(params[:id])
    end
end
