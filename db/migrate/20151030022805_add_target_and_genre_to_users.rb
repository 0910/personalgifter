class AddTargetAndGenreToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :target, index: true, foreign_key: true
    add_reference :users, :genre, index: true, foreign_key: true
  end
end
