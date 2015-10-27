class CreateTargetProducts < ActiveRecord::Migration
  def change
    create_table :target_products do |t|
      t.references :target, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
