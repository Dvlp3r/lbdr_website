ActiveAdmin.register Investor do
  permit_params :tr_firstname, :tr_lastname, :tr_description,:es_firstname, :es_lastname, :es_description,:firstname, :lastname, :description, :photo
  menu parent: "Investor", priority: 1, label: "Investor"
  
  filter :firstname
  filter :lastname
  filter :description

  index do
    selectable_column
    column :id
    column :firstname
    column :lastname
    actions
    # column '' do |post|
    #   link_to 'Edit', admin_post_path(post) if authorized? :update, post
    # end
  end

  # action_item :add do
  #   link_to "Add Event", ""
  # end

  form do |f|
    f.inputs 'Investor' do
      f.input :firstname
      f.input :tr_firstname
      f.input :es_firstname
      f.input :lastname
      f.input :es_lastname
      f.input :tr_lastname
      f.input :description, as: :html_editor
      f.input :es_description, as: :html_editor
      f.input :tr_description, as: :html_editor
      f.input :photo, :as => :file, hint: f.object.photo? ? image_tag(f.object.photo.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.button 'Commit'
  end

  show do
    attributes_table do
      row :id
      row :firstname
      row :es_firstname
      row :tr_firstname
      row :lastname
      row :es_lastname
      row :tr_lastname
      row :description
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
