class RegistrationsController < Devise::RegistrationsController
  
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  helper_method :resource, :resource_name, :devise_mapping
  
  def after_sign_up_path_for(resource)
    admin_root_path
  end

  
end

