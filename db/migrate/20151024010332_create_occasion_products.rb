class CreateOccasionProducts < ActiveRecord::Migration
  def change
    create_table :occasion_products do |t|
      t.references :occasion, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
