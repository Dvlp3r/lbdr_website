ActiveAdmin.register Brand do
	permit_params :en_name, :en_description,:es_name, :es_description,:tr_name, :tr_description, :url, :brand_photo, :logo_for_brand, :_wysihtml5_mode, :new_investment_id, :sector_ids => []
	menu parent: "Brands", priority: 1, label: "Brand"

  filter :en_name
  filter :url
  filter :en_description

  form do |f|
    f.inputs "Brand Details" do
      f.input :sector_ids, :as => :select, :collection => Sector.all.map {|u| [u.en_name, u.id]}, multiple: true
      f.input :new_investment
      f.input :en_name, label: 'Name in English'
      f.input :es_name, label: 'Name in Spanish'
      f.input :tr_name, label: 'Name in Turkish'
      f.input :url
      f.input :en_description, label: 'Description in English', as: :html_editor
      f.input :es_description, label: 'Description in Spanish', as: :html_editor
      f.input :tr_description, label: 'Description in Turkish', as: :html_editor
      f.input :brand_photo, :as => :file,  hint: f.object.brand_photo? ? image_tag(f.object.brand_photo.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
      f.input :logo_for_brand,:as => :file, hint: f.object.logo_for_brand? ? image_tag(f.object.logo_for_brand.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.button 'Commit'
  end

  show do
    attributes_table do
      row :id
      panel "Sectors" do
        table_for brand.sector_brands do
          column "name" do |sector_brand|
            sector_brand.sector.en_name
          end
        end
      end
      row :new_investment
      row :en_name
      row :es_name
      row :tr_name
      row :url
      row :en_description
      row :es_description
      row :tr_description
      row :created_at
      row :updated_at
      row :brand_photo do |image|
        image_tag(image.brand_photo.url, height: '150', width: '150')
      end
      row :logo_for_brand do |image|
        image_tag(image.logo_for_brand.url, height: '150', width: '150')
      end
    end
    active_admin_comments
  end
end
