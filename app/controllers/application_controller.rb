class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin, :contact_number, :first_name, :last_name, :address])

  end

end
