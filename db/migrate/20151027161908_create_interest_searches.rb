class CreateInterestSearches < ActiveRecord::Migration
  def change
    create_table :interest_searches do |t|
      t.references :interest, index: true, foreign_key: true
      t.references :search, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
