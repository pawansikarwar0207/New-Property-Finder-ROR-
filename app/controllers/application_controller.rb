class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:user_update, keys: [:first_name, :last_name, :telephone, :details, :image, :image_cache, :company])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
end
end
