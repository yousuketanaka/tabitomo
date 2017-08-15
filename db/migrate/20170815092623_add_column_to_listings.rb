class AddColumnToListings < ActiveRecord::Migration
  def change
    add_column :listings, :language_level_1, :string
    add_column :listings, :resident_country, :string
    add_column :listings, :resident_city, :string
  end
end
