class Genre < ActiveRecord::Base
  has_many :users

  has_many :genre_products
  has_many :products, :through => :genre_products

  has_many :genre_searches, :dependent => :destroy
  has_many :searches, :through => :genre_searches
end
