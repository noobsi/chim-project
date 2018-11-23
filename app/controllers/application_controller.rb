class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # before_action :require_login
  before_filter :set_search
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
  end

  def set_search
    @q = Bird.search(params[:q])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
  end
end
