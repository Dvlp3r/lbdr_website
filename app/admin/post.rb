ActiveAdmin.register Post do
  permit_params :es_title, :es_author, :es_content,:tr_title, :tr_author, :tr_content,:title, :author, :content
  menu parent: "News", priority: 1, label: "Post"

  filter :title
  filter :author
  filter :content

  index do
    selectable_column
    column :title
    column :author
    actions
    # column '' do |post|
    #   link_to 'Edit', admin_post_path(post) if authorized? :update, post
    # end
  end

  # action_item :add do
  #   link_to "Add Event", ""
  # end

  form do |f|
    f.inputs 'Post' do
      f.input :title
      f.input :es_title
      f.input :tr_title
      f.input :author
      f.input :es_author
      f.input :tr_author
      f.input :content, as: :html_editor
      f.input :es_content, as: :html_editor
      f.input :tr_content, as: :html_editor
    end
    f.button 'Commit'
  end
end
