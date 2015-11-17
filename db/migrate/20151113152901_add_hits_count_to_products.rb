class AddHitsCountToProducts < ActiveRecord::Migration
  def change
    add_column :products, :hits_count, :integer, :default => 0, :null => false
  end
end
