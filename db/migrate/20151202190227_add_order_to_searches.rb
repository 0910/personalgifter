class AddOrderToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :order, :string
  end
end
