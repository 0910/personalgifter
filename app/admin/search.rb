ActiveAdmin.register Search do


  before_create do |search|
    search.user = current_user
  end

  index do
    column :id
    column :occasion_id
    column :relationship_id
    column :target_id
    column :genre_id
    column :interest_ids
    actions
  end

  filter :occasion_id
  filter :relationship_id
  filter :target_id
  filter :genre_id
  filter :interests
  filter :user

  show do |p|
    attributes_table do
      row :genre_id
      row :target_id
      row :occasion_id
      row :relationship_id
      row :insterest_id
      row :user
    end
  end

  form html: { multipart: true } do |f|
    f.inputs 'Details' do
      f.semantic_errors
      f.input :occasion_id, :as => :select2, :collection => Occasion.all, :include_blank => false, :require => true
      f.input :relationship_id, :as => :select2, :collection => Relationship.all, :include_blank => false, :require => true
      f.input :target_id, :as => :select2, :collection => Target.all, :include_blank => false, :require => true
      f.input :genre_id, :as => :select2, :collection => Genre.all, :include_blank => false, :require => true
      f.input :interest_ids, :as => :select2_multiple, :collection => Interest.all, :include_blank => false, :require => true
    end
    f.actions
  end

end
