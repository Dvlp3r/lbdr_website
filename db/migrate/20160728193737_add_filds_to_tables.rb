class AddFildsToTables < ActiveRecord::Migration[5.0]
  def up

    add_column :banners, :es_description, :text
    add_column :banners, :tr_description, :text
    
    add_column :sectors, :es_description, :text
    add_column :sectors, :tr_description, :text
    
    add_column :brands, :es_description, :text
    add_column :brands, :tr_description, :text
    
    add_column :homes, :es_description, :text
    add_column :homes, :tr_description, :text
    
    add_column :contents, :es_description, :text
    add_column :contents, :tr_description, :text
    
    add_column :brand_banners, :es_description, :text
    add_column :brand_banners, :tr_description, :text
    
    add_column :group_banners, :es_description, :text
    add_column :group_banners, :tr_description, :text
    
    add_column :investor_contents, :es_description, :text
    add_column :investor_contents, :tr_description, :text
    
    add_column :new_investments, :es_description, :text
    add_column :new_investments, :tr_description, :text
    
    add_column :post_banners, :es_description, :text
    add_column :post_banners, :tr_description, :text

    add_column :board_members, :es_bio, :text
    add_column :board_members, :tr_bio, :text
    
    add_column :groups, :es_about, :text
    add_column :groups, :tr_about, :text
    
    add_column :groups, :es_model, :text
    add_column :groups, :tr_model, :text
    
    add_column :groups, :es_executive_committee_description, :text
    add_column :groups, :tr_executive_committee_description, :text
    
    add_column :groups, :es_board_of_directors_description, :text
    add_column :groups, :tr_board_of_directors_description, :text
    
    add_column :investors, :es_description, :text
    add_column :investors, :tr_description, :text
    
    add_column :posts, :es_content, :text
    add_column :posts, :tr_content, :text
    
    add_column :sector_banners, :es_description, :text
    add_column :sector_banners, :tr_description, :text

    add_column :executives, :es_bio, :text
    add_column :executives, :tr_bio, :text

    add_column :groups, :es_spirit, :text
    add_column :groups, :tr_spirit, :text

    add_column :banners, :es_title, :string
    add_column :banners, :tr_title, :string
    
    add_column :sector_banners, :es_title, :string
    add_column :sector_banners, :tr_title, :string

    add_column :sectors, :es_name, :string
    add_column :sectors, :tr_name, :string
    
    add_column :brands, :es_name, :string
    add_column :brands, :tr_name, :string
    
    add_column :homes, :es_title, :string
    add_column :homes, :tr_title, :string
    
    add_column :contents, :es_title, :string
    add_column :contents, :tr_title, :string

    add_column :brand_banners, :es_title, :string
    add_column :brand_banners, :tr_title, :string
    
    add_column :group_banners, :es_title, :string
    add_column :group_banners, :tr_title, :string
    
    add_column :investor_contents, :es_title, :string
    add_column :investor_contents, :tr_title, :string
    
    add_column :new_investments, :es_title, :string
    add_column :new_investments, :tr_title, :string
    
    add_column :post_banners, :es_title, :string
    add_column :post_banners, :tr_title, :string

    add_column :board_members, :es_first_name, :string
    add_column :board_members, :tr_first_name, :string
    
    add_column :board_members, :es_last_name, :string
    add_column :board_members, :tr_last_name, :string
    
    add_column :board_members, :es_position, :string
    add_column :board_members, :tr_position, :string
    
    add_column :board_members, :es_governance_type, :string
    add_column :board_members, :tr_governance_type, :string
    
    add_column :executives, :es_first_name, :string
    add_column :executives, :tr_first_name, :string

    add_column :executives, :es_last_name, :string
    add_column :executives, :tr_last_name, :string

    add_column :investors, :es_firstname, :string
    add_column :investors, :tr_firstname, :string

    add_column :investors, :es_lastname, :string
    add_column :investors, :tr_lastname, :string

    add_column :posts, :es_title, :string
    add_column :posts, :tr_title, :string
    
    add_column :posts, :es_author, :string
    add_column :posts, :tr_author, :string

  end

  def down

    remove_column :banners, :es_description, :text
    remove_column :banners, :tr_description, :text
    
    remove_column :sectors, :es_description, :text
    remove_column :sectors, :tr_description, :text
    
    remove_column :brands, :es_description, :text
    remove_column :brands, :tr_description, :text
    
    remove_column :homes, :es_description, :text
    remove_column :homes, :tr_description, :text
    
    remove_column :contents, :es_description, :text
    remove_column :contents, :tr_description, :text
    
    remove_column :brand_banners, :es_description, :text
    remove_column :brand_banners, :tr_description, :text
    
    remove_column :group_banners, :es_description, :text
    remove_column :group_banners, :tr_description, :text
    
    remove_column :investor_contents, :es_description, :text
    remove_column :investor_contents, :tr_description, :text
    
    remove_column :new_investments, :es_description, :text
    remove_column :new_investments, :tr_description, :text
    
    remove_column :post_banners, :es_description, :text
    remove_column :post_banners, :tr_description, :text

    remove_column :board_members, :es_bio, :text
    remove_column :board_members, :tr_bio, :text
    
    remove_column :groups, :es_about, :text
    remove_column :groups, :tr_about, :text
    
    remove_column :groups, :es_model, :text
    remove_column :groups, :tr_model, :text
    
    remove_column :groups, :es_executive_committee_description, :text
    remove_column :groups, :tr_executive_committee_description, :text
    
    remove_column :groups, :es_board_of_directors_description, :text
    remove_column :groups, :tr_board_of_directors_description, :text
    
    remove_column :investors, :es_description, :text
    remove_column :investors, :tr_description, :text
    
    remove_column :posts, :es_content, :text
    remove_column :posts, :tr_content, :text
    
    remove_column :sector_banners, :es_description, :text
    remove_column :sector_banners, :tr_description, :text

    remove_column :executives, :es_bio, :text
    remove_column :executives, :tr_bio, :text

    remove_column :groups, :es_spirit, :text
    remove_column :groups, :tr_spirit, :text

    remove_column :banners, :es_title, :string
    remove_column :banners, :tr_title, :string
    
    remove_column :sectors, :es_title, :string
    remove_column :sectors, :tr_title, :string
    
    remove_column :brands, :es_name, :string
    remove_column :brands, :tr_name, :string
    
    remove_column :homes, :es_title, :string
    remove_column :homes, :tr_title, :string
    
    remove_column :contents, :es_title, :string
    remove_column :contents, :tr_title, :string

    remove_column :brand_banners, :es_title, :string
    remove_column :brand_banners, :tr_title, :string
    
    remove_column :group_banners, :es_title, :string
    remove_column :group_banners, :tr_title, :string
    
    remove_column :investor_contents, :es_title, :string
    remove_column :investor_contents, :tr_title, :string
    
    remove_column :new_investments, :es_title, :string
    remove_column :new_investments, :tr_title, :string
    
    remove_column :post_banners, :es_title, :string
    remove_column :post_banners, :tr_title, :string

    remove_column :board_members, :es_first_name, :string
    remove_column :board_members, :tr_first_name, :string
    
    remove_column :board_members, :es_last_name, :string
    remove_column :board_members, :tr_last_name, :string
    
    remove_column :board_members, :es_position, :string
    remove_column :board_members, :tr_position, :string
    
    remove_column :board_members, :es_governance_type, :string
    remove_column :board_members, :tr_governance_type, :string
    
    remove_column :executives, :es_first_name, :string
    remove_column :executives, :tr_first_name, :string

    remove_column :executives, :es_last_name, :string
    remove_column :executives, :tr_last_name, :string

    remove_column :investors, :es_firstname, :string
    remove_column :investors, :tr_firstname, :string

    remove_column :investors, :es_lastname, :string
    remove_column :investors, :tr_lastname, :string

    remove_column :posts, :es_title, :string
    remove_column :posts, :tr_title, :string
    
    remove_column :posts, :es_author, :string
    remove_column :posts, :tr_author, :string
  end
end
