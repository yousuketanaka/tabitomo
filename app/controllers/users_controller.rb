class UsersController < ApplicationController
  def show
      @user = User.find_by(id: params[:id])
  end
  
  def country_name
    country = ISO3166::Country[country_code]
    country.translations[I18n.locale.to_s] || country.name
  end
end
