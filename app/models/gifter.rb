class Gifter < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  belongs_to :target
  belongs_to :genre
  has_many :gifter_interests, :dependent => :destroy
  has_many :interests, :through => :gifter_interests
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |gifter|
      gifter.email = auth.info.email
      gifter.password = Devise.friendly_token[0,20]
      gifter.name = auth.info.name   # assuming the user model has a name
      gifter.image = auth.info.image # assuming the user model has an image
    end
  end
end
