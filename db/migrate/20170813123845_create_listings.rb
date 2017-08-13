class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :language_level_2
      t.string :language_2
      t.string :language_level_2
      t.string :address
      t.string :service_type
      t.integer :resident_years
      t.integer :price_setting
      t.text :favorite_topic
      t.string :self_praise
      t.text :current_situation
      t.text :my_goal
      t.text :my_plan
      t.boolean :active
      t.boolean :active
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
