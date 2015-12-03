class AddPublicPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :public_price, :string
  end
end
