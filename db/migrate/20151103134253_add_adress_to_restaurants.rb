class AddAdressToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :street_number, :string
    add_column :restaurants, :street_name, :string
    add_column :restaurants, :city, :string
    add_column :restaurants, :country, :string
    add_column :restaurants, :postcode, :string
  end
end
