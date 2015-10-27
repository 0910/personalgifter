class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :occasion_id
      t.integer :relationship_id
      t.integer :target_id
      t.integer :genre_id
      t.integer :interest_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
