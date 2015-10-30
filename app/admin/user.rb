ActiveAdmin.register User do
  #permit_params :email, :password, :password_confirmation

  before_destroy do
    UserInterest.where(:user => params[:id]).delete_all
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
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :name
      f.input :location
      f.input :genre
      f.input :target
      f.input :role, :as => :select2, :collection => ['admin', 'gifter'], :include_blank => false, :require => true
      f.input :interests, :as => :select2_multiple, :collection => Interest.all, :include_blank => false, :require => true
    end
    f.actions
  end

end
