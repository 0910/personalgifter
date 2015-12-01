class CreateProductGroups < ActiveRecord::Migration
  def change
    create_table :product_groups do |t|
      t.references :product, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
