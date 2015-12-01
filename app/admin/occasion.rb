ActiveAdmin.register Occasion do

  action_item only: :show do
    link_to 'New Occasion', new_admin_occasion_path
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
