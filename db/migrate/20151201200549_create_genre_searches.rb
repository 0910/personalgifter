class CreateGenreSearches < ActiveRecord::Migration
  def change
    create_table :genre_searches do |t|
      t.references :genre, index: true, foreign_key: true
      t.references :search, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
