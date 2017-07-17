class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :organizer?, :admin?

  # Verifies of current user is also an organizer
  def organizer?
    current_user.organizer == true
  end

  # Verifies of current user is also an admin
  def admin?
    current_user.admin == true
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(
      :first_name, :last_name, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(
      :username, :first_name, :last_name, :description, :organization_name, :email, :password, :password_confirmation,
      :current_password, :address1, :address2, :city, :state, :country, :postalcode, :admin,
      :organizer, :email) }
  end

  def update_resource(resource, params)
   resource.update_without_password(params)
  end


end
