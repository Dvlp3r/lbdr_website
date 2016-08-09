ActiveAdmin.register Connector do
  permit_params :header, :footer
  menu label: "Connector", priority: 14
  actions :all, :except => [:new, :destroy, :show]
  index do
    selectable_column
    column :header
    column :footer
    actions
  end

  form do |f|
    f.inputs 'Connector' do
      f.input :header
      f.input :footer
    end
    f.button 'Commit'
  end
end
