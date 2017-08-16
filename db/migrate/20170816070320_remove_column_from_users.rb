class RemoveColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :resident_country, :string
    remove_column :users, :resident_city, :string
    remove_column :users, :language_1, :string
  end
end
