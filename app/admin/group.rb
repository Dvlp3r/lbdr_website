ActiveAdmin.register Group do
  permit_params :about, :model, :executive_committee_description, :board_of_directors_description, :photo, :spirit, executive_ids: []
  menu parent: "Group", priority: 1, label: "Group Details"


  form do |f|
		f.inputs "Group" do
			f.input :about, as: :html_editor
      f.input :model, as: :html_editor
      f.input :spirit, as: :html_editor
      f.input :executive_committee_description, as: :html_editor
      f.input :board_of_directors_description, as: :html_editor
			f.input :photo, :as => :file, hint: f.object.photo? ? image_tag(f.object.photo.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
		end
		f.button 'Commit'
	end

  show do
    attributes_table do
      row :id
      row :about
      row :model
      row :spirit
      row :executive_committee_description
      row :board_of_directors_description
      row :created_at
      row :updated_at
      row :photo do |image|
        image_tag(image.photo.url, height: '150', width: '150')
      end
    end
    active_admin_comments
  end

end
