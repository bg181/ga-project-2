class UsersController < ApplicationController
  load_and_authorize_resource

  def user
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:image)
  end

end

