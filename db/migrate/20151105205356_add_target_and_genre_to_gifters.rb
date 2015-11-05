class AddTargetAndGenreToGifters < ActiveRecord::Migration
  def change
  	add_reference :gifters, :target, index: true, foreign_key: true
    add_reference :gifters, :genre, index: true, foreign_key: true
  end
end
