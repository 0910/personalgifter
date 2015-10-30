class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@search = Search.new
  	@interests = Interest.find(params[:id])
  end

  def edit
  	@user = User.find(current_user)
  	@search = Search.new
  	@interests = Interest.find(current_user)
  end

  def update
    @user = User.find(current_user)
 
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:genre_id, :target_id, {:interest_ids => []})
  end
end
