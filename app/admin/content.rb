ActiveAdmin.register Content do
  permit_params :en_title, :en_description,:es_title, :es_description,:tr_title, :tr_description
  menu parent: "Home", priority: 3, label: "Content"

  filter :en_title
  filter :en_description

  form do |f|
    f.inputs 'Content' do
      f.input :en_title, label: 'Title in English'
      f.input :es_title, label: 'Title in Spanish'
      f.input :tr_title, label: 'Title in Turkish'
      f.input :en_description, label: 'Description in English', as: :html_editor
      f.input :es_description, label: 'Description in Spanish', as: :html_editor
      f.input :tr_description, label: 'Description in Turkish', as: :html_editor
    end
    f.button 'Commit'
  end

end
