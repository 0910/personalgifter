class ChangeGenreOnSearchs < ActiveRecord::Migration
  def change
  	rename_column :searches, :genre_id, :genre_ids
  	change_column :searches, :genre_ids, :text
  end
end
