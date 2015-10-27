class InterestProduct < ActiveRecord::Base
  belongs_to :interest
  belongs_to :product
end
