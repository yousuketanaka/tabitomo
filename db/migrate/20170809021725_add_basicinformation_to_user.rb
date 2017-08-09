class AddBasicinformationToUser < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :sex, :string
    add_column :users, :nationality, :string
    add_column :users, :resident_country, :string
    add_column :users, :resident_city, :string
    add_column :users, :job, :string
    add_column :users, :language_1, :string
  end
end
