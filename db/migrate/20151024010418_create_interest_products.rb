class CreateInterestProducts < ActiveRecord::Migration
  def change
    create_table :interest_products do |t|
      t.references :interest, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
