class Interest < ActiveRecord::Base
  has_many :interest_products, :dependent => :destroy
  has_many :products, :through => :interest_products

  has_many :interest_searches, :dependent => :destroy
  has_many :searches, :through => :interest_searches
  
  has_many :gifter_interests, :dependent => :destroy
  has_many :gifters, :through => :gifter_interests
end
