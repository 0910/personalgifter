ActiveAdmin.register Store do

  before_create do |store|
    store.user = current_user
  end

  action_item only: :show do
    link_to 'New Store', new_admin_store_path
  end

  index do
    column :id
    column :name
    column :description
    column :user
    actions
  end
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
