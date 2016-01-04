class AddSplashToImages < ActiveRecord::Migration
  def change
  	add_column :images, :splash_id, :integer
  end
end
