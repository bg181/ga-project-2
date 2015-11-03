class UsersController < ApplicationController
  load_and_authorize_resource

  def show
    # @article is already loaded and authorized
  end

  def user_params
    params.require(:user).permit(:profile_photos)
  end

end

