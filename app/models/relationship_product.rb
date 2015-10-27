class RelationshipProduct < ActiveRecord::Base
  belongs_to :relationship
  belongs_to :product
end
