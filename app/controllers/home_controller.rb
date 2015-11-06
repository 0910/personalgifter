class HomeController < ApplicationController
  def index
    # Get products recomendations
  	@recomendations = Product.all.limit(4).reverse_order

    # Get topic recomendations
    @romantic = Product.joins(:interest_products).where(:interest_products => {:interest_id => 4}).limit(2).reverse_order
    @athletic = Product.joins(:interest_products).where(:interest_products => {:interest_id => 2}).limit(2).reverse_order
    @elegant = Product.joins(:interest_products).where(:interest_products => {:interest_id => 6}).limit(2).reverse_order

    #
  	@occasions = Occasion.all
  	@interests = Interest.all
    @relationships = Relationship.all
    @genres = Genre.all
    @targets = Target.all
  end
end
