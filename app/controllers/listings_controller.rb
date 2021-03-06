class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:show, :update, :basics, :description, :address, :price, :photos, :calendar, :bankaccount,:publish]
  
  def index
    @listings = current_user.listings  #現在のユーザーが持っている全てのリスティングを入れてください。
  end

  def show
    @photos = @listing.photos
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
    @photo = Photo.new
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
    params.require(:listing).permit(:plan_title, :plan_detail, :shop_info, :acceptable, :plan_time, :guide_detail, :cancel_policy, :capacity, :address, :service_type, :price_setting, :use_language, :residentcountry, :residentcity, :use_language_level, :language_2, :language_level_2, :resident_years, :favorite_topic, :self_praise, :current_situation, :my_goal)
  end
end