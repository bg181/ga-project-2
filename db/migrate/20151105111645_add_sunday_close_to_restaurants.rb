class AddSundayCloseToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :sunday_close, :time
  end
end
