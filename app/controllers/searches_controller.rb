class SearchesController < ApplicationController

  helper_method :sort_column, :sort_direction

  def new
    @search = Search.new
  end
  def create
    @search = Search.create(search_params)
    redirect_to @search
  end
  def show
    @search = Search.find(params[:id])
  end
  def update
    @search = Search.find(params[:id])
    if @search.update_attributes(search_params)
      redirect_to @search
    else
      render 'edit'
    end
  end

  private	
  def sort_column
    Product.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
  def search_params
    params.require(:search).permit(:occasion_id, :relationship_id, {:genre_ids => []}, :target_id, {:interest_ids => []}, :category_id, :store_id, :min, :max, :order)
  end
end