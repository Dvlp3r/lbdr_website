ActiveAdmin.register BoardMember do
  permit_params :en_first_name, :en_last_name, :en_bio,:es_first_name, :es_last_name, :es_bio,:tr_first_name, :tr_last_name, :tr_bio, :position, :photo, :governance_type, :group_id
  menu priority: 9
  
  form do |f|
    f.inputs "BoardMember" do
      f.input :group_id, :as => :select, :collection => Group.all.map {|u| [u.id, u.id]}, :include_blank => false
      f.input :en_first_name, label: "First name in English "
      f.input :es_first_name, label: "First name in Spanish"
      f.input :tr_first_name, label: "First name in Turkish"
      f.input :en_last_name, label: "Last name in English"
      f.input :es_last_name, label: "Last name in Spanish"
      f.input :tr_last_name, label: "Last name in Turkish"
      f.input :en_bio, label: "Bio in English", as: :html_editor
      f.input :es_bio, label: "Bio in Spanish", as: :html_editor
      f.input :tr_bio, label: "Bio in Turkish", as: :html_editor
      f.input :en_position, :as => :select, :collection => ["Executive Committee", "Board of Directors"], :include_blank => false
      f.input :photo, :as => :file, hint: f.object.photo? ? image_tag(f.object.photo.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.button 'Commit'
  end

  show do
    attributes_table do
      row :id
      row :group_id
      row :en_first_name
      row :tr_first_name
      row :es_first_name
      row :en_last_name
      row :tr_last_name
      row :es_last_name
      row :en_bio
      row :es_bio
      row :tr_bio
      row :position
      row :created_at
      row :updated_at
      row :photo_file_name
      row :photo_file_size
      row :photo_content_type
      row :photo do |image|
        image_tag(image.photo.url, height: '150', width: '150')
      end
    end
    active_admin_comments
  end

end