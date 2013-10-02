class Fans::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/fan.rb)
    @fan = Fan.find_for_facebook_oauth(request.env["omniauth.auth"], current_fan)

    if @fan.persisted?
      sign_in_and_redirect @fan, :event => :authentication #this will throw if @fan is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to temas_path
    end
  end

  private

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    fan = Fan.where(:provider => auth.provider, :uid => auth.uid).first
    unless fan
      fan = Fan.create(name:auth.extra.raw_info.name,
                           provider:auth.provider,
                           uid:auth.uid,
                           email:auth.info.email,
                           password:Devise.friendly_token[0,20])
    end
    fan
  end
end
