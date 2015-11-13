class ProductsController < ApplicationController
  def index
  	@products = Product.all.reverse_order
  end
  def show
  	@product = Product.find(params[:id])
  	interest_ids = @product.interest_ids
  	@products = Product.all
    @products = @products.distinct.joins(:interest_products).where(:interest_products => {:interest_id => interest_ids}) if interest_ids.present?
  end
end
