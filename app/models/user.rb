class User < ActiveRecord::Base
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable,
         :registerable

  enum role: [:author, :editor, :super_admin]
  
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
  
end