ActiveAdmin.register Relationship do

  index do
    selectable_column
    column :id
    column :name
    column 'Available', :sortable => :available do |resource|
      column_select(resource, :available, ["Yes", "No"])
    end
    column :created_at
    column :updated_at
    actions
  end
  
  action_item only: :show do
    link_to 'New Relationship', new_admin_relationship_path
  end

  filter :products
  filter :name
  filter :created_at
  filter :updated_at

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
