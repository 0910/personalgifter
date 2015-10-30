class Target < ActiveRecord::Base
  has_many :users
  has_many :target_products
  has_many :products, :through => :target_products
end
