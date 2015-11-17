class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :store
  belongs_to :category

  has_many :occasion_products, :dependent => :destroy
  has_many :occasions, :through => :occasion_products

  has_many :relationship_products, :dependent => :destroy
  has_many :relationships, :through => :relationship_products

  has_many :interest_products, :dependent => :destroy
  has_many :interests, :through => :interest_products

  has_many :target_products, :dependent => :destroy
  has_many :targets, :through => :target_products

  has_many :genre_products, :dependent => :destroy
  has_many :genres, :through => :genre_products

  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true
end
