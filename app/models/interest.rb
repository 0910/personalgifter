class Interest < ActiveRecord::Base
  has_many :interest_products
  has_many :products, :through => :interest_products
  has_many :interest_searches
  has_many :searches, :through => :interest_searches
  has_many :user_interests
  has_many :users, :through => :user_interests
end
