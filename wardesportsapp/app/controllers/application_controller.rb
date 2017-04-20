class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def organizer?
    current_user.organizer
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(
      :firstname, :lastname, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(
      :username, :firstname, :lastname, :description, :email, :password, :password_confirmation,
      :current_password, :address1, :address2, :city, :state, :country, :postalcode, :admin,
      :organizer, :email) }
  end

  def update_resource(resource, params)
   resource.update_without_password(params)
  end


end
