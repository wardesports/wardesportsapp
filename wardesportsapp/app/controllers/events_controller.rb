class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:edit, :update, :destroy, :show]



  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    binding.pry
    @event = Event.new(event_params)
    current_user.organizer = true
    @event.organizer_id = current_user.id
    if @event.save
      redirect_to event_path
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
    :links, :category, :organizer_id, :attendees_id)
  end
end
