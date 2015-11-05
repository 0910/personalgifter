class RemoveExtraFieldsFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :name, :string
    remove_column :users, :image, :string
    remove_column :users, :role, :string
  end
end
