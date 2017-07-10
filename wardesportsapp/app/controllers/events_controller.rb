class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:edit, :update, :destroy, :show, :join, :leave]
  helper_method :org_name, :join, :leave

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    current_user.organizer = true
    @event.organizer_id = current_user.id
    if @event.save
      redirect_to event_path(@event)
    end
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
  end

  private

  def join
    current_user.events << @event
    redirect_to @event
  end

  def leave
    current_user.events.find(@event.id)
    attendee = Attendee.find_by_user_id_and_event_id(current_user.id, @event.id)
    attendee.delete
    redirect_to @event
  end

  def org_name
    organizer = User.find(@event.organizer_id)
    @org_name = organizer.organization_name
  end

  def set_event
    @event = Event.find(params[:id])
    # This checks if current_user is an organizer or not.
    @event.organizer_id == current_user.id ? true : false
  end

  def event_params
    params.require(:event).permit(:name, :description, :start, :end,
    :address1, :address2, :city, :state, :country, :postalcode, :website,
    :links, :category, :organizer_id, :attendees_id)
  end
end
