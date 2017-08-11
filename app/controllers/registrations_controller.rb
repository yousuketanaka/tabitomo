class RegistrationsController < Devise::RegistrationsController
  
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  def edit
  end
  
  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_number, :age, :sex, :nationality, :resident_country, :resident_city, :language_1, :description])
  end
end