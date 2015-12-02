class AddFieldsToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :category_id, :integer
    add_column :searches, :min, :integer
    add_column :searches, :max, :integer
    add_column :searches, :store_id, :integer
  end
end
