class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :link
      t.references :user, index: true, foreign_key: true
      t.references :store, index: true, foreign_key: true
      t.references :occasion, index: true, foreign_key: true
      t.references :relationship, index: true, foreign_key: true
      t.references :interest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
