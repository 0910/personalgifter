class SearchesController < ApplicationController
  def new
    @search = Search.new
  end
  def create
    #puts search_params
    @search = Search.create(search_params)
    redirect_to @search
  end
  def show
    @search = Search.find(params[:id])
  end
  def update
    @search = Search.find(params[:id])
    render :show
  end

  private	
  def search_params
    params.require(:search).permit(:occasion_id, :relationship_id, :genre_id, :target_id, {:interest_ids => []})
  end
end