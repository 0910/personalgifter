class CreateGenreProducts < ActiveRecord::Migration
  def change
    create_table :genre_products do |t|
      t.references :genre, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
    end
  end
end
