class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string   :file_file_name
      t.string   :file_content_type
      t.integer  :file_file_size
      t.datetime :file_updated_at
      t.references  :product, index: true, foreign_key: true
      t.references  :store, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
