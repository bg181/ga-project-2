class AddOpeningTimesToRestaurant < ActiveRecord::Migration
  def change
      add_column :restaurants, :monday_open, :time
      add_column :restaurants, :monday_close, :time
      add_column :restaurants, :tuesday_open, :time
      add_column :restaurants, :tuesday_close, :time
      add_column :restaurants, :wednesday_open, :time
      add_column :restaurants, :wednesday_close, :time
      add_column :restaurants, :thursday_open, :time
      add_column :restaurants, :thursday_close, :time
      add_column :restaurants, :friday_open, :time
      add_column :restaurants, :friday_close, :time
      add_column :restaurants, :saturday_open, :time
      add_column :restaurants, :saturday_close, :time
      add_column :restaurants, :sunday_open, :time
    end

  end
