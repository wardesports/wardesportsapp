class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def organizer?
    current_user.organizer
  end

end
