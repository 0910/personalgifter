ActiveAdmin.register Store do

  before_create do |store|
    store.user = current_user
  end

  config.clear_action_items!

  action_item :only => [:index, :show] , :if => proc { current_user.admin? } do
    link_to 'New Store', new_admin_store_path 
  end


  index do
    selectable_column
    column :id
    column :name
    column 'Available', :sortable => :available do |resource|
      column_select(resource, :available, ["Yes", "No"])
    end
    column :user
    actions
  end

  form html: { multipart: true } do |f|
    f.inputs 'Details' do
      f.semantic_errors
      f.input :name, :require => true
      if current_user.admin?
        f.input :user_id, :as => :select2, :collection => User.all, :include_blank => false, :require => true
      end
      f.input :address
      f.input :description
      f.input :link
    end
    f.actions
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
