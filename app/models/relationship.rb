class Relationship < ActiveRecord::Base
  has_many :relationship_products, :dependent => :destroy
  has_many :products, :through => :relationship_products
end
