class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  
  # validates :address, presence:true
  # validates :service_type, presence:true
  # validates :price_setting, presence:true
end