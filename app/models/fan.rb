class Fan < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :omniauthable, :omniauth_providers => [:facebook]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your fan
  attr_accessible :email, :password, :password_confirmation, :remember_me, :ya_voto, :provider, :uid, :name

  has_and_belongs_to_many :temas

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    fan = Fan.where(:provider => auth.provider, :uid => auth.uid).first
    return fan if fan
    fan = Fan.create(name:auth.extra.raw_info.name,
                           provider:auth.provider,
                           uid:auth.uid,
                           email:auth.info.email,
                           password:Devise.friendly_token[0,20]
                           )
  end

  def self.new_with_session(params, session)
    super.tap do |fan|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        fan.email = data["email"] if fan.email.blank?
      end
    end
  end
end
