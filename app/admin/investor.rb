ActiveAdmin.register Investor do
  permit_params :tr_firstname, :tr_lastname, :tr_description,:es_firstname, :es_lastname, :es_description,:en_firstname, :en_lastname, :en_description, :photo
  menu parent: "Investor", priority: 1, label: "Investor"
  
  filter :en_firstname
  filter :en_lastname
  filter :en_description

  index do
    selectable_column
    column :id
    column :en_firstname
    column :en_lastname
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
      f.input :en_firstname, label: "First name in English "
      f.input :es_firstname, label: "First name in Spanish"
      f.input :tr_firstname, label: "First name in Turkish"
      f.input :en_lastname, label: "Last name in English"
      f.input :es_lastname, label: "Last name in Spanish"
      f.input :tr_lastname, label: "Last name in Turkish"
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
      row :en_firstname
      row :es_firstname
      row :tr_firstname
      row :en_lastname
      row :es_lastname
      row :tr_lastname
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
