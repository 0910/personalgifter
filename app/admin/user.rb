ActiveAdmin.register User do
  #permit_params :email, :password, :password_confirmation

  before_destroy do
    UserInterest.where(:user => params[:id]).delete_all
  end

  action_item only: :show do
    link_to 'New User', new_admin_user_path
  end

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :role
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :name
  filter :role
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  show do |p|
    attributes_table do
      row :email
      row :name
      row :role
      row :current_sign_in_at
      row :sign_in_count
      row :created_at
    end
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :name
      f.input :role, as: :select, :collection => ['store', 'admin'], :include_blank => false
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
