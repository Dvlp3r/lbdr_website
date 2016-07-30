ActiveAdmin.register GroupBanner do
  permit_params :en_title, :en_description,:es_title, :es_description,:tr_title, :tr_description, :photo
  menu parent: "Group", priority: 2, label: "Banner"

  filter :en_title
  filter :en_description

  index do
    selectable_column
    column :id
    column :en_title
    column :en_description
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
      f.input :en_title, label: 'Title in English'
      f.input :es_title, label: 'Title in Spanish'
      f.input :tr_title, label: 'Title in Turkish'
      f.input :en_description, label: 'Description in English', as: :html_editor
      f.input :es_description, label: 'Description in Spanish', as: :html_editor
      f.input :tr_description, label: 'Description in Turkish', as: :html_editor
      f.input :photo, :as => :file, hint: f.object.photo? ? image_tag(f.object.photo.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.button 'Commit'
  end

  show do
    attributes_table do
      row :id
      row :en_title
      row :es_title
      row :tr_title
      row :en_description
      row :es_description
      row :tr_description
      row :created_at
      row :updated_at
      row :photo do |image|
        image_tag(image.photo.url, height: '150', width: '150')
      end
    end
    active_admin_comments
  end

end
