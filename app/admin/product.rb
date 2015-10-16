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
  
  show do |p|
    attributes_table do
      row :name
      row :description
      row :price
      row :link
      row :store
      row :occasion
      row :relationship
      row :interest
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
      #f.input :project_type_id, :as => :select, :collection => ProjectType.all, :include_blank => false, :require => true
      #f.input :category_id, :as => :select, :collection => Category.all, :include_blank => false, :require => true
      #f.input :target_id, :as => :select, :collection => Target.all, :include_blank => false, :require => true
      #f.input :city_id, :as => :select, :collection => City.all, :include_blank => false, :require => true
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
