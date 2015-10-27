class Relationship < ActiveRecord::Base
  has_many :relationship_products
  has_many :products, :through => :relationship_products
end
