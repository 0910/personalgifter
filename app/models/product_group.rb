class ProductGroup < ActiveRecord::Base
  belongs_to :product
  belongs_to :group
end
