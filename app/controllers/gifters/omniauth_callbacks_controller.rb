class Gifters::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/gifter.rb)
    @gifter = Gifter.from_omniauth(request.env["omniauth.auth"])

    if @gifter.persisted?
      sign_in_and_redirect @gifter, :event => :authentication #this will throw if @gifter is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to gifter_path
    end
  end
end