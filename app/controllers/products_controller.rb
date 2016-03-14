class ProductsController < ApplicationController
  def show
  	@product = Product.find(params[:id])
  	genre_ids = @product.genre_ids
    interest_ids = @product.interest_ids
  	@products = Product.all
    @products = @products.distinct.joins(:genre_products).where(:genre_products => {:genre_id => genre_ids}) if genre_ids.present?
    @products = @products.distinct.joins(:interest_products).where(:interest_products => {:interest_id => interest_ids}) if interest_ids.present?
  	set_meta_tags(
      title: @product.name,
      description: @product.description,
      keywords: 'regalos, regalar, navidad, amigo invisible',
      og: {
        title: @product.name,
        type:'website', url:product_url(@product),
        image: @product.images.first.file.url(:large),
        description: @product.description
      }
    )
  end
end
