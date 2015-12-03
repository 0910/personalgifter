class AddAvailabillityToModels < ActiveRecord::Migration
  def change
    add_column :categories, :available, :string, :default => 'Yes'
    add_column :groups, :available, :string, :default => 'Yes'
    add_column :interests, :available, :string, :default => 'Yes'
    add_column :occasions, :available, :string, :default => 'Yes'
    add_column :products, :available, :string, :default => 'Yes'
    add_column :relationships, :available, :string, :default => 'Yes'
    add_column :stores, :available, :string, :default => 'Yes'
    add_column :targets, :available, :string, :default => 'Yes'
  end
end
