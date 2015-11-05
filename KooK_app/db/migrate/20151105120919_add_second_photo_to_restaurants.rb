class AddSecondPhotoToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :picture_2, :string
  end
end
