class CreateRelationshipProducts < ActiveRecord::Migration
  def change
    create_table :relationship_products do |t|
      t.references :relationship, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
