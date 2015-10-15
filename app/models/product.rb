class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :store
  belongs_to :occasion
  belongs_to :relationship
  belongs_to :interest
end
