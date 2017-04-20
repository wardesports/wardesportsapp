class EventsController < ApplicationController
  # before_action :authenticate_user!
  # before_action :set_event (:update, :edit, :destroy)

  def index
  end

  def create
    @event = Event.new(event_params)
    if event.save
      current_user.organizer = true
    end
  end

  def show
    @events = Event.all
  end

  def update
    @event.update(event_params)
    redirect_to @event
  end

  def edit
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
    params.require(:pet).permit(:name, :description, :start, :end,
    :address1, :address2, :city, :state, :country, :postalcode, :website,
    :links, :type)
  end
end
