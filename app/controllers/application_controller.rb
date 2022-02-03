class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authorize_user

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :account_update, keys: [:password, :password_confirmation, :current_password, :username, :avatar]
    )
    devise_parameter_sanitizer.permit(
      :sign_up, keys: [:password, :password_confirmation, :current_password, :username, :avatar]
    )
  end

  private

  def authorize_user
    @user = current_user
  end
end
