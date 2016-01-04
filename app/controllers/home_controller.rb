class HomeController < ApplicationController
  def index
    # Get products recomendations
  	@recomendations = Product.all.limit(12).order('rand()')

    # Get topic recomendations
    @groups = Group.where(available: 'Yes')
    #@romantic = Product.joins(:interest_products).where(:interest_products => {:interest_id => 4}).limit(2).order('rand()')
    #@athletic = Product.joins(:interest_products).where(:interest_products => {:interest_id => 2}).limit(2).order('rand()')
    #@elegant = Product.joins(:interest_products).where(:interest_products => {:interest_id => 6}).limit(2).order('rand()')

    #
  	@occasions = Occasion.where(available: 'Yes')
  	@interests = Interest.where(available: 'Yes')
    @relationships = Relationship.where(available: 'Yes')
    @genres = Genre.where(available: 'Yes')
    @targets = Target.where(available: 'Yes')
    @splashes = Splash.where(available: 'Yes')
  end
end
