class AddGraffitiImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_photos, :string
  end
end
