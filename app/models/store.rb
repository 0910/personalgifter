class Store < ActiveRecord::Base
  belongs_to :user
  has_many :products, :dependent => :nullify
  validates :name, uniqueness: { case_sensitive: false }

  def self.options_for_select
	order('LOWER(name)').map { |e| [e.name, e.id] }
  end
end
