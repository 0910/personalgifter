class Search < ActiveRecord::Base
  has_many :interest_searches
  has_many :interests, :through => :interest_searches
  serialize :interest_id, Array
  def search_products
    products = Product.all
    products = Product.joins(:occasion_products).where(:occasion_products => {:occasion_id => occasion_id}) if occasion_id.present?
    products = Product.joins(:relationship_products).where(:relationship_products => {:relationship_id => relationship_id}) if relationship_id.present?
    products = Product.joins(:genre_products).where(:genre_products => {:genre_id => genre_id}) if genre_id.present?
    products = Product.joins(:target_products).where(:target_products => {:target_id => target_id}) if target_id.present?
    products = Product.joins(:interest_products).where(:interest_products => {:interest_id => interest_ids}) if interest_ids.present?
    return products
  end
end


