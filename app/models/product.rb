class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :store
  belongs_to :occasion
  belongs_to :relationship
  belongs_to :interest
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true
end
