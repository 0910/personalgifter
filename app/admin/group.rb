ActiveAdmin.register Group do

  action_item only: :show do
    link_to 'New Group', new_admin_group_path
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

  filter :name
  filter :created_at
  
  show do |p|
    attributes_table do
      row :name
      row :products do 
        group.products.collect.each do |g|
          g.name
        end
      end
      row :description
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
      f.input :products, :as => :select, :collection => Product.all, :include_blank => false, :require => true, :multiple => true
      f.input :description
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
