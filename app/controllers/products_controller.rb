class ProductsController < ApplicationController
  def index
  	@products = Product.all.reverse_order
  end
  def show
  	@search = Search.new
  	@products = Product.all.reverse_order
  	@product = Product.find(params[:id])
  end
end
