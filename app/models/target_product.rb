class TargetProduct < ActiveRecord::Base
  belongs_to :target
  belongs_to :product
end
