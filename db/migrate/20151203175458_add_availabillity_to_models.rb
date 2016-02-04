class AddAvailabillityToModels < ActiveRecord::Migration
  def change
    unless column_exists? :categories, :available
      add_column :categories, :available, :string, :default => 'Yes'
    end
    unless column_exists? :groups, :available
      add_column :groups, :available, :string, :default => 'Yes'
    end
    unless column_exists? :interests, :available
      add_column :interests, :available, :string, :default => 'Yes'
    end
    unless column_exists? :products, :available
      add_column :products, :available, :string, :default => 'Yes'
    end
    unless column_exists? :relationships, :available
      add_column :relationships, :available, :string, :default => 'Yes'
    end
    unless column_exists? :targets, :available
      add_column :targets, :available, :string, :default => 'Yes'
    end
    unless column_exists? :occasions, :available
      add_column :occasions, :available, :string, :default => 'Yes'
    end
  end
end
