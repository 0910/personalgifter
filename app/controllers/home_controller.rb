class HomeController < ApplicationController
  def index
    # Get products recomendations
  	@recomendations = Product.all.limit(12).reverse_order

    # Get topic recomendations
    @romantic = Product.joins(:interest_products).where(:interest_products => {:interest_id => 4}).limit(2).order('rand()')
    @athletic = Product.joins(:interest_products).where(:interest_products => {:interest_id => 2}).limit(2).order('rand()')
    @elegant = Product.joins(:interest_products).where(:interest_products => {:interest_id => 6}).limit(2).order('rand()')

    #
  	@occasions = Occasion.all
  	@interests = Interest.all
    @relationships = Relationship.all
    @genres = Genre.all
    @targets = Target.all
  end
end
