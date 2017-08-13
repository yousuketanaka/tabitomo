class Listing < ActiveRecord::Base
  belongs_to :user
  
  # validates :address, presence:true
  # validates :service_type, presence:true
  # validates :price_setting, presence:true
end