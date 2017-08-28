class AddColumnToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :listing_image, :string
  end
end
