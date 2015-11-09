ActiveAdmin.register Product do

  before_create do |product|
    product.user = current_user
  end

  index do
    column :id
    column :name
    column :price
    column :link
    column :user
    actions
  end

  filter :user
  filter :store
  filter :occasions
  filter :relationships
  filter :interests
  filter :targets
  filter :genres
  filter :name
  filter :description
  filter :created_at
  
  show do |p|
    attributes_table do
      row :name
      row :description
      row :price
      row :link
      row :store
      row :genres do 
        product.genres.collect.each do |g|
          g.name
        end
      end
      row :targets do 
        product.targets.collect.each do |t|
          t.name
        end
      end
      row :occasions do 
        product.occasions.collect.each do |o|
          o.name
        end
      end
      row :relationships do 
        product.relationships.collect.each do |r|
          r.name
        end
      end
      row :insterests do 
        product.interests.collect.each do |i|
          i.name
        end
      end
      row :user
      p.images.each do |image|
        row :image do
          image_tag(image.file.url(:thumb))
        end
      end
    end
  end

  form html: { multipart: true } do |f|
    f.inputs 'Details' do
      f.semantic_errors
      f.input :name, :require => true
      f.input :store_id, :as => :select2, :collection => Store.all, :include_blank => false, :require => true
      f.input :targets, :as => :select2_multiple, :collection => Target.all, :include_blank => false, :require => true
      f.input :genres, :as => :select2_multiple, :collection => Genre.all, :include_blank => false, :require => true
      f.input :occasions, :as => :select2_multiple, :collection => Occasion.all, :include_blank => false, :require => true
      f.input :relationships, :as => :select2_multiple, :collection => Relationship.all, :include_blank => false, :require => true
      f.input :interests, :as => :select2_multiple, :collection => Interest.all, :include_blank => false, :require => true
      f.input :description, :require => true
      f.input :price
      f.input :link
    end
    f.inputs "Images" do
      f.has_many :images do |i|
        i.input :file, as: :file, label: false, hint: i.object.new_record? ? i.template.content_tag(:span, "No Image Yet") : image_tag(i.object.file.url(:thumb))
        i.input :cover, as: :boolean, label: "Cover"
        i.input :_destroy, as: :boolean, label: "Destroy?" unless i.object.new_record?
      end 
    end
    f.actions
  end

end
