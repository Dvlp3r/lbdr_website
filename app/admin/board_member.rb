ActiveAdmin.register BoardMember do
  permit_params :first_name, :last_name, :bio,:es_first_name, :es_last_name, :es_bio,:tr_first_name, :tr_last_name, :tr_bio, :position, :photo, :governance_type, :group_id
  menu priority: 9
  
  form do |f|
    f.inputs "BoardMember" do
      f.input :group_id, :as => :select, :collection => Group.all.map {|u| [u.id, u.id]}, :include_blank => false
      f.input :first_name
      f.input :es_first_name
      f.input :tr_first_name
      f.input :last_name
      f.input :es_last_name
      f.input :tr_last_name
      f.input :bio, as: :html_editor
      f.input :es_bio, as: :html_editor
      f.input :tr_bio, as: :html_editor
      f.input :position, :as => :select, :collection => ["Executive Committee", "Board of Directors"], :include_blank => false
      f.input :photo, :as => :file, hint: f.object.photo? ? image_tag(f.object.photo.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.button 'Commit'
  end

  show do
    attributes_table do
      row :id
      row :group_id
      row :first_name
      row :tr_first_name
      row :es_first_name
      row :last_name
      row :tr_last_name
      row :es_last_name
      row :bio
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