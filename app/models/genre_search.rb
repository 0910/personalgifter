class GenreSearch < ActiveRecord::Base
  belongs_to :genre
  belongs_to :search
end
