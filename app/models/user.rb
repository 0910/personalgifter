class User < ActiveRecord::Base
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :target
  belongs_to :genre
  has_many :user_interests
  has_many :interests, :through => :user_interests

  def admin?
    role == 'admin'
  end
  
  def store?
    role == 'store'
  end

  def guest?
    !admin? && !store?
  end
  
end