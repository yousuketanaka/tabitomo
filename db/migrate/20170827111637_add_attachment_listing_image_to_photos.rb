class AddAttachmentListingImageToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :listing_image
    end
  end

  def self.down
    remove_attachment :photos, :listing_image
  end
end
