ActiveAdmin.register Product do

  csv_importable :columns => [:name, :description, :public_price, :link]

  before_create do |product|
    product.user = current_user
  end

  action_item only: :show do
    link_to 'New Product', new_admin_product_path
  end

  index do
    selectable_column
    column :id
    column :name
    column :category
    column :store
    column 'Available', :sortable => :available do |resource|
      column_select(resource, :available, ["Yes", "No"])
    end
    column :user
    actions
  end

  filter :user, :if => proc { current_user.admin? }
  filter :store, :if => proc { current_user.admin? }
  filter :category
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
      row :public_price
      row :link
      row :store
      row :category
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
      f.input :store_id, :as => :select2, :collection => Store.where(available: 'Yes', user_id: current_user), :include_blank => false, :require => true
      f.input :category_id, :as => :select2, :collection => Category.where(available: 'Yes'), :include_blank => false, :require => true
      f.input :targets, :as => :select, :collection => Target.where(available: 'Yes'), :include_blank => false, :require => true, :multiple => true
      f.input :genres, :as => :select, :collection => Genre.all, :include_blank => false, :require => true, :multiple => true
      f.input :occasions, :as => :select, :collection => Occasion.where(available: 'Yes'), :include_blank => false, :require => true, :multiple => true
      f.input :relationships, :as => :select, :collection => Relationship.where(available: 'Yes'), :include_blank => false, :require => true, :multiple => true
      f.input :interests, :as => :select, :collection => Interest.where(available: 'Yes'), :include_blank => false, :require => true, :multiple => true
      f.input :description, :require => true
      f.input :price
      f.input :public_price
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
