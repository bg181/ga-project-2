class AddColumnsToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :description, :text
    add_column :restaurants, :picture, :text
    add_column :restaurants, :price, :text
  end
 end
