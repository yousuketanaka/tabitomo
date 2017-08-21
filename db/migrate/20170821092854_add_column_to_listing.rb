class AddColumnToListing < ActiveRecord::Migration
  def change
    add_column :listings, :plan_title, :string
    add_column :listings, :plan_detail, :text
    add_column :listings, :shop_info, :string
    add_column :listings, :acceptable, :integer
    add_column :listings, :plan_time, :integer
    add_column :listings, :guide_detail, :text
    add_column :listings, :cancel_policy, :text
    add_column :listings, :capacity, :text
  end
end
