class HomeController < ApplicationController
  def index
  	@recomendations = Product.all.limit(4).reverse_order
  	@grouped = Product.all.limit(2).reverse_order
  	@occasions = Occasion.all
  	@interests = Interest.all
    @relationships = Relationship.all
    @genres = Genre.all
    @targets = Target.all
    @search = Search.new
  end
end
