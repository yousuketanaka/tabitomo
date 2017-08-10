class RegistrationsController < Devise::RegistrationsController
  
  def edit
    @country = ISO3166::Country.find_country_by_name('japan')
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end