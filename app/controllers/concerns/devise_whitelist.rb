# Creates concern for DeviseWhitelist
module DeviseWhitelist
  extend ActiveSupport::Concern

  # Devise whiteliist
  # Before other controllers, create anytime you work with devise
  included do
    before_filter :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
