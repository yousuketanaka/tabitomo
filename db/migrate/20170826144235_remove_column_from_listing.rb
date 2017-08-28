class RemoveColumnFromListing < ActiveRecord::Migration
  def change
    remove_column :listings, :listing_image, :string
  end
end
