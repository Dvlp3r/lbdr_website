ActiveAdmin.register Post do
  permit_params :post_category_id,:es_title, :es_author, :es_content,:tr_title, :tr_author, :tr_content,:en_title, :en_author, :en_content
  menu parent: "News", priority: 1, label: "Post"

  filter :en_title
  filter :en_author
  filter :en_content

  index do
    selectable_column
    column :post_category
    column :en_title
    column :en_author
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
      f.input :post_category, as: :select, collection: PostCategory.order(:name)
      f.input :en_title, label: 'Title in English'
      f.input :es_title, label: 'Title in Spanish'
      f.input :tr_title, label: 'Title in Turkish'
      f.input :en_author, label: 'Title in English'
      f.input :es_author, label: 'Title in Spanish'
      f.input :tr_author, label: 'Title in Turkish'
      f.input :en_content, label: 'Content in English', as: :html_editor
      f.input :es_content, label: 'Content in Spanish', as: :html_editor
      f.input :tr_content, label: 'Content in Turkish', as: :html_editor
    end
    f.button 'Commit'
  end
end
