class Group < ActiveRecord::Base
	has_many :product_groups, :dependent => :destroy
	has_many :products, :through => :product_groups

	has_many :images, :dependent => :destroy
	accepts_nested_attributes_for :images, :allow_destroy => true
end
