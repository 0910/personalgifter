class ProductsController < ApplicationController
  def index
  	@products = Product.all.reverse_order
  end
  def show
  	@product = Product.find(params[:id])
  	genre_id = @product.genre_id
    interest_ids = @product.interest_ids
  	@products = Product.all
    @products = @products.joins(:genre_products).where(:genre_products => {:genre_id => genre_id}) if genre_id.present?
    @products = @products.distinct.joins(:interest_products).where(:interest_products => {:interest_id => interest_ids}) if interest_ids.present?
  end
end
