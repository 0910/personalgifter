class Occasion < ActiveRecord::Base
  has_many :occasion_products, :dependent => :destroy
  has_many :products, :through => :occasion_products
end
