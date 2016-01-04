class AddAvailabillityToSplashes < ActiveRecord::Migration
  def change
  	add_column :splashes, :available, :string, :default => 'Yes'
  end
end
