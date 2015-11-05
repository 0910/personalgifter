class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
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

  protected

  def after_sign_in_path_for(resource)
    # return the path based on resource
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
