class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :username, :image, :role, :profile_photos)
    end

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:email, :password, :password_confirmation, :current_password, :username, :image, :profile_photos, :role)


    end
  end

      rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_url, :alert => exception.message

          check_authorization
        end
      end


