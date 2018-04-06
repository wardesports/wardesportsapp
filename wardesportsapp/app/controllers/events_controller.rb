class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:edit, :update, :destroy, :show, :join, :leave]
  helper_method :org_name, :join, :leave

  def index
    @events = EventFinder.find_events(params[:lat], params[:long])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    # Set to true everytime so it doesn't make a call to the database initially and everytime after.
    # @event.organizer_id = current_user.id
    # current_user.organizer = true
    # if @event.save
    #   current_user.save
    #   redirect_to event_path(@event)
    # end
  end

  def show
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to @event
  end

  def destroy
    @event.destroy
    redirect_to user_organizer_index_path(current_user)
  end

  ########### start - move this to model #############
  def join
    Attendee.create!(event_id: @event.id, user_id: current_user.id)
    redirect_to @event
  end

  def leave

    attendee = Attendee.find_by_user_id_and_event_id(current_user.id, @event.id)
    attendee.destroy
    redirect_to @event
  end

  # def org_name
  #   organizer = User.find(@event.organizer_id)
  #   @org_name = organizer.organization_name
  # end
  ########### end - move this to model #############
  private


  def set_event
    @event = Event.find(params[:id])
    # This checks if current_user is an organizer or not.
    # @event.organizer_id == current_user.id ? true : false
  end

  def event_params
    params.require(:event).permit(:name, :description, :start, :end,
    :address1, :address2, :city, :state, :country, :postalcode, :website,
    :links, :category, :organizer_id, :attendees_id)
  end
end
