class OccasionProduct < ActiveRecord::Base
  belongs_to :occasion
  belongs_to :product
end
