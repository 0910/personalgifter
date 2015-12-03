class Search < ActiveRecord::Base
  has_many :interest_searches, :dependent => :destroy
  has_many :interests, :through => :interest_searches
  serialize :interest_id, Array

  has_many :genre_searches, :dependent => :destroy
  has_many :genres, :through => :genre_searches
  serialize :genre_id, Array

  def search_products
    products = Product.where(available: 'Yes')
    products = products.joins(:occasion_products).where(:occasion_products => {:occasion_id => occasion_id}) if occasion_id.present?
    products = products.joins(:relationship_products).where(:relationship_products => {:relationship_id => relationship_id}) if relationship_id.present?
    products = products.distinct.joins(:genre_products).where(:genre_products => {:genre_id => genre_ids}) if genre_ids.present?
    products = products.joins(:target_products).where(:target_products => {:target_id => target_id}) if target_id.present?
    products = products.distinct.joins(:interest_products).where(:interest_products => {:interest_id => interest_ids}) if interest_ids.present?
    products = products.where(:category_id => category_id) if category_id.present?
    products = products.where(:store_id => store_id) if store_id.present?
    products = products.where("price >= ?", min) if min.present?
    products = products.where("price <= ?", max) if max.present?

    return products
  end
end