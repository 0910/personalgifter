class GenreProduct < ActiveRecord::Base
  belongs_to :genre
  belongs_to :product
end
