class AddAvailabillityToOccasion < ActiveRecord::Migration
  def change
    add_column :occasions, :available, :string, :default => 'Yes'
  end
end
