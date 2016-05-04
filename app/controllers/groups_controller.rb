class GroupsController < ApplicationController
  def show
  	@group = Group.find(params[:id])
    set_meta_tags(
      title: 'Ideales para ' + @group.name,
      description: @group.description,
      keywords: 'regalos, regalar, navidad, amigo invisible',
      og: {
        title: 'Ideales para' + @group.name,
        type:'website', url:group_url(@group),
        image: @group.images.first.file.url(:large),
        description: @group.description
      }
    )
  end
end
