ActiveAdmin.register GroupBanner do
  permit_params :title, :description, :photo
  menu parent: "Group", priority: 2, label: "Banner"

  filter :title
  filter :description

  index do
    selectable_column
    column :id
    column :title
    column :description
    actions
    # column '' do |post|
    #   link_to 'Edit', admin_post_path(post) if authorized? :update, post
    # end
  end

  # action_item :add do
  #   link_to "Add Event", ""
  # end

  form do |f|
    f.inputs 'Banner' do
      f.input :title
      f.input :description, as: :html_editor
      f.input :photo, :as => :file, hint: f.object.photo? ? image_tag(f.object.photo.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.button 'Commit'
  end

  show do
    attributes_table do
      row :id
      row :title
      row :description
      row :created_at
      row :updated_at
      row :photo do |image|
        image_tag(image.photo.url, height: '150', width: '150')
      end
    end
    active_admin_comments
  end

end
