class GifterInterest < ActiveRecord::Base
  belongs_to :gifter
  belongs_to :interest
end
