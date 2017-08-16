class AddColumnToListings < ActiveRecord::Migration
  def change
    add_column :listings, :use_language, :string
    add_column :listings, :use_language_level, :string
    add_column :listings, :residentcountry, :string
    add_column :listings, :residentcity, :string
  end
end
