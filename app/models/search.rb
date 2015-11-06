class Search < ActiveRecord::Base
  has_many :interest_searches, :dependent => :destroy
  has_many :interests, :through => :interest_searches
  serialize :interest_id, Array
  def search_products
    products = Product.all
    products = products.joins(:occasion_products).where(:occasion_products => {:occasion_id => occasion_id}) if occasion_id.present?
    products = products.joins(:relationship_products).where(:relationship_products => {:relationship_id => relationship_id}) if relationship_id.present?
    products = products.joins(:genre_products).where(:genre_products => {:genre_id => genre_id}) if genre_id.present?
    products = products.joins(:target_products).where(:target_products => {:target_id => target_id}) if target_id.present?
    products = products.joins(:interest_products).where(:interest_products => {:interest_id => interest_ids}) if interest_ids.present?
    return products
  end
end


#Product.find(:conditions => ["occasion_products.occasion_id = 1 and occasion_id.present = ?", "relationship_products.relationship_id = 1 and relationship_id.present = ?", "genre_products.genre_id = 1 and genre_id.present = ?", "target_products.target_id = 1 and target_id.present = ?", "interest_products.interest_id = [1] and interest_ids.present = ?"], :joins => [:occasion_products, :relationship_products, :genre_products, :target_products, :interest_products])
