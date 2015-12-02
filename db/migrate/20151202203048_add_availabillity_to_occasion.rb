class AddAvailabillityToOccasion < ActiveRecord::Migration
  def change
    add_column :occasions, :available, :string
  end
end
