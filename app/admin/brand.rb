ActiveAdmin.register Brand do
	permit_params :name, :description, :url, :brand_photo, :logo_for_brand, :sector_id, :_wysihtml5_mode, :new_investment_id
	menu parent: "Brands", priority: 1, label: "Brand"

  filter :name
  filter :url
  filter :description

	form do |f|
		f.inputs "Brand Details" do
			f.input :sector
			f.input :new_investment
			f.input :name
			f.input :url
			f.input :description, as: :html_editor
			f.input :brand_photo, :as => :file,  hint: f.object.brand_photo? ? image_tag(f.object.brand_photo.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			f.input :logo_for_brand,:as => :file, hint: f.object.logo_for_brand? ? image_tag(f.object.logo_for_brand.url, height: '100', width: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
		end
		f.button 'Commit'
	end

	show do
    attributes_table do
      row :id
      row :sector
      row :new_investment
      row :name
      row :url
      row :description
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
