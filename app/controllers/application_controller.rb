class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Create a search method to perform searches from any controller

  def search
    @search = Search.new
  end
  helper_method :search
  

  # Create a resource method to access registration via modal from any controller
  def resource_name
    :gifter
  end

  def resource
    @resource ||= Gifter.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:gifter]
  end

  helper_method :resource, :resource_name, :devise_mapping

  # Add some custom behaviour to devise registration

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |g| g.permit(:email, :password, :password_confirmation, :name, :genre_id, :target_id, {:interest_ids => []} )}
    devise_parameter_sanitizer.for(:account_update) { |g| g.permit(:email, :current_password, :password, :password_confirmation, :name, :genre_id, :target_id, {:interest_ids => []} )}
  end

  protected
  def after_sign_in_path_for(resource)
   sign_in_and_redirect @gifter
  end
  def after_update_path_for(resource)
    gifter_path(current_gifter)
  end

  def access_denied(exception)
    redirect_to main_app.root_url, alert: exception.message
  end

  rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, :alert => exception.message
  end

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end

  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
 
end
