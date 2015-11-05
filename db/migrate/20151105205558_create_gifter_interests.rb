class CreateGifterInterests < ActiveRecord::Migration
  def change
    create_table :gifter_interests do |t|
      t.references :gifter, index: true, foreign_key: true
      t.references :interest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
