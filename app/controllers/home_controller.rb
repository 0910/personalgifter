class HomeController < ApplicationController
  def index
  	@recomendations = Product.all.limit(4).reverse_order
  	@grouped = Product.all.limit(2).reverse_order
  end
end
