class AddOmniauthToGifters < ActiveRecord::Migration
  def change
  	add_column :gifters, :provider, :string
    add_index :gifters, :provider
    add_column :gifters, :uid, :string
    add_index :gifters, :uid
  end
end
