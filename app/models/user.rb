class User < ActiveRecord::Base
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  
  belongs_to :target
  belongs_to :genre
  has_many :user_interests
  has_many :interests, :through => :user_interests

  def admin?
    role == 'admin'
  end
  
  def gifter?
    role == 'gifter'
  end

  def guest?
    !admin? && !gifter?
  end
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
      user.location = auth.info.location # assuming the user model has a location
      user.role = 'gifter'
    end
  end
end