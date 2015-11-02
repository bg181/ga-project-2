class ChangePriceToInteger < ActiveRecord::Migration
  def change
    remove_column :restaurants, :price
    add_column :restaurants, :price, :integer
  end
end
