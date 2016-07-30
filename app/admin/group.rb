ActiveAdmin.register Group do
  permit_params :en_about, :en_model, :en_executive_committee_description, :en_board_of_directors_description, :en_spirit,:es_about, :es_model, :es_executive_committee_description, :es_board_of_directors_description, :es_spirit,:tr_about, :tr_model, :tr_executive_committee_description, :tr_board_of_directors_description, :tr_spirit, :photo, executive_ids: []
  menu parent: "Group", priority: 1, label: "Group Details"


  form do |f|
    f.inputs "Group" do
      f.input :en_about, label: 'About in English', as: :html_editor
      f.input :es_about, label: 'About in Spanish', as: :html_editor
      f.input :tr_about, label: 'About in Turkish', as: :html_editor
      f.input :en_model, label: 'Model in English', as: :html_editor
      f.input :es_model, label: 'Model in Spanish', as: :html_editor
      f.input :tr_model, label: 'Model in Turkish', as: :html_editor
      f.input :en_spirit, label: 'Spirit in English', as: :html_editor
      f.input :es_spirit, label: 'Spirit in Spanish', as: :html_editor
      f.input :tr_spirit, label: 'Spirit in Turkish', as: :html_editor
      f.input :en_executive_committee_description, label: 'Executive committee Description in English', as: :html_editor
      f.input :es_executive_committee_description, label: 'Executive committee Description in Spanish', as: :html_editor
      f.input :tr_executive_committee_description, label: 'Executive committee Description in Turkish', as: :html_editor
      f.input :en_board_of_directors_description, label: 'Board of directors Description in English', as: :html_editor
      f.input :es_board_of_directors_description, label: 'Board of directors Description in Spanish', as: :html_editor
      f.input :tr_board_of_directors_description, label: 'Board of directors Description in Turkish', as: :html_editor
      f.input :photo, :as => :file, hint: f.object.photo? ? image_tag(f.object.photo.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.button 'Commit'
  end

  show do
    attributes_table do
      row :id
      row :en_about
      row :es_about
      row :tr_about
      row :en_model
      row :es_model
      row :tr_model
      row :en_spirit
      row :es_spirit
      row :tr_spirit
      row :en_executive_committee_description
      row :es_executive_committee_description
      row :tr_executive_committee_description
      row :en_board_of_directors_description
      row :es_board_of_directors_description
      row :tr_board_of_directors_description
      row :created_at
      row :updated_at
      row :photo do |image|
        image_tag(image.photo.url, height: '150', width: '150')
      end
    end
    active_admin_comments
  end

end
