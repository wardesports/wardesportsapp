class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:edit, :show, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    userevents = Userevent.new(event_id: @event.id, user_id: current_user.id)
    # binding.pry
    if @event.save && userevents.save
      # makse it faster to set instead of calling in to the db to check
      current_user.organizer = true
      redirect_to events_path
    end
  end

  def show
    @events = Event.all
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

  def set_event
    @event = Event.find(params[:id])
    @event.user_id == current_user.id ? true : false
  end

  def event_params
    params.require(:event).permit(:name, :description, :start, :end,
    :address1, :address2, :city, :state, :country, :postalcode, :website,
    :links, :type)
  end
end
