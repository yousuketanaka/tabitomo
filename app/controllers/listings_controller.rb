class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:update, :basics, :description, :address, :price, :photos, :calendar, :bankaccount,:publish]
  
  def index
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = current_user.listings.build
  end

  def create
    #parameterとともに現在のユーザーのリスティングを作成
    @listing = current_user.listings.build(listing_params)
    if @listing.save
      redirect_to manage_listing_basics_path(@listing), notice: "リスティングを作成・保存をしました"
    else
      render new_listing_path, notice: "リスティングを作成・保存出来ませんでした"
    end
  end

  def edit
  end

  def update
    @listing.update(listing_params)
    if @listing
      redirect_to :back, notice:"更新できました。"
    end
  end
  
  def basics
  end
  
  def description
  end
  
  def address
  end
  
  def price
  end
  
  def photos
  end
  
  def calendar
  end
  
  def bankaccount
  end
  
  def publish
  end
  
  private
  
  def set_listing
      @listing = Listing.find(params[:id])
  end
  
  def listing_params
    params.require(:listing).permit(:address, :service_type, :price_setting, :use_language, :residentcountry, :residentcity, :use_language_level, :language_2, :language_level_2, :resident_years, :favorite_topic, :self_praise, :current_situation, :my_goal)
  end
end