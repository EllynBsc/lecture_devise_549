class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # before running any action from this controller, execute this authenticate user method

  # method is used if you want to add some more columns to your user model on sign up or on login.
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar, :first_name, :last_name])
  end
end
