ActiveAdmin.register Language do
  permit_params :name, :code
  
  filter :name
  filter :code

  index do
    selectable_column
    column :id
    column :code
    column :name
    actions
    # column '' do |post|
    #   link_to 'Edit', admin_post_path(post) if authorized? :update, post
    # end
  end

  # action_item :add do
  #   link_to "Add Event", ""
  # end

  form do |f|
    f.inputs 'Language' do
      f.input :name
      f.input :code, :as => :select, :collection => I18n.available_locales
    end
    f.button 'Commit'
  end

  show do
    attributes_table do
      row :id
      row :name
      row :code
    end
    active_admin_comments
  end

end
