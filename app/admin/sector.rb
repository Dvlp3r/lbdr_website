ActiveAdmin.register Sector do
  permit_params :name, :description, :icon_image,  :sector_photo, :_wysihtml5_mode, :order
  menu parent: "Sectors", priority: 5, label: "Sector"


  index do
    selectable_column
    column :id
    column :order
    column :brand
    column :name
    actions
    # column '' do |post|
    #   link_to 'Edit', admin_post_path(post) if authorized? :update, post
    # end
  end

  filter :name
  filter :brands
  filter :description

  form do |f|
    f.inputs 'Sector' do
      f.input :order
      f.input :name
      f.input :icon_image
      f.input :description, as: :html_editor
      f.input :sector_photo, :as => :file, hint: f.object.sector_photo? ? image_tag(f.object.sector_photo.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.button 'Commit'
  end

  show do
    attributes_table do
      row :id
      row :order
      row :name
      row :icon_image
      row :description
      row :created_at
      row :updated_at
      row :sector_photo_file_name
      row :sector_photo_file_size
      row :sector_photo_content_type
      row :sector_photo do |image|
        image_tag(image.sector_photo.url, height: '150', width: '150')
      end
    end
    active_admin_comments
  end

end
