class ProductsController < ApplicationController
  def index
  	@products = Product.all.reverse_order
  end
  def show
  	@products = Product.all.reverse_order
  	@product = Product.find(params[:id])
  end
end
