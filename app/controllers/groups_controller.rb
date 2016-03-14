class GroupsController < ApplicationController
  def show
  	@group = Group.find(params[:id])
  	set_meta_tags(
      title: 'Personal Gifter. El regalo perfecto para cada ocasión',
      description: 'Buscar un regalo puede ser agotador. ¿Qué le compro? ¿le gustará? ¿lo usará? Personal Gifter te ofrece sugerencias a medida para regalar.',
      keywords: 'regalos, regalar, navidad, amigo invisible',
      og: {
        title:'Personal Gifter. El regalo perfecto para cada ocasión',
        type:'website', url:'http://www.personalgifter.com',
        image: image_url('fbsplash.jpg'),
        description: 'Buscar un regalo puede ser agotador. ¿Qué le compro? ¿le gustará? ¿lo usará? Personal Gifter te ofrece sugerencias a medida para regalar.' 
      }
    )
  end
end
