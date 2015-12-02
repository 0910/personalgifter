class SearchesController < ApplicationController
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
  def search_params
    params.require(:search).permit(:occasion_id, :relationship_id, {:genre_ids => []}, :target_id, {:interest_ids => []}, :category_id, :store_id, :min, :max, :order)
  end
end