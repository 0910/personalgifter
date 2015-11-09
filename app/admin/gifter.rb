ActiveAdmin.register Gifter do

  index do
    column :id
    column :email
    column :name
    column :last_sign_in_at
    column :created_at
    actions
  end

  filter :target
  filter :genre
  filter :interests
  filter :email
  filter :name
  filter :uid
  filter :current_sign_in_ip
  filter :last_sign_in_ip
  filter :created_at
  filter :updated_at
  filter :confirmation_sent_at
  filter :confirmed_at
  filter :confirmed_email

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
