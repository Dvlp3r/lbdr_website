ActiveAdmin.register PostCategory do
  permit_params :name
  menu parent: "News", priority: 3, label: "Category"
  filter :name
  index do
    selectable_column
    column :name
    actions
  end


  form do |f|
    f.inputs 'PostCategory' do
      f.input :name
    end
    f.button 'Commit'
  end
end
