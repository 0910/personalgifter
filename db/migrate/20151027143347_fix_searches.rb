class FixSearches < ActiveRecord::Migration
  def change
  	rename_column :searches, :interest_id, :interest_ids
  	change_column :searches, :interest_ids, :text
  end
end
