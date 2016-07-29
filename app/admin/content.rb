ActiveAdmin.register Content do
  permit_params :title, :description,:es_title, :es_description,:tr_title, :tr_description
  menu parent: "Home", priority: 3, label: "Content"

  filter :title
  filter :description

  form do |f|
    f.inputs 'Content' do
      f.input :title
      f.input :es_title
      f.input :tr_title
      f.input :description, as: :html_editor
      f.input :es_description, as: :html_editor
      f.input :tr_description, as: :html_editor
    end
    f.button 'Commit'
  end

end
