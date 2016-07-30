module CommonMethods
  extend ActiveSupport::Concern

  def get_title(locale)
    (send("#{locale}_title") || en_title).to_s.html_safe rescue nil
  end

  def get_description(locale)
    (send("#{locale}_description") || en_description).to_s.html_safe rescue nil
  end

  def get_name(locale)
    (send("#{locale}_name") || en_name).to_s.html_safe rescue nil
  end

  def get_first_name(locale)
    (send("#{locale}_first_name") || en_first_name).to_s.html_safe rescue nil
  end

  def get_last_name(locale)
    (send("#{locale}_last_name") || en_last_name).to_s.html_safe rescue nil
  end

  def get_bio(locale)
    (send("#{locale}_bio") || en_bio).to_s.html_safe rescue nil
  end

  def get_model(locale)
    (send("#{locale}_model") || en_model).to_s.html_safe rescue nil
  end

  def get_about(locale)
    (send("#{locale}_about") || en_about).to_s.html_safe rescue nil
  end

  def get_spirit(locale)
    (send("#{locale}_spirit") || en_spirit).to_s.html_safe rescue nil    
  end

  def get_executive_committee_description(locale)
    (send("#{locale}_executive_committee_description") || en_executive_committee_description).to_s.html_safe rescue nil
  end

  def get_board_of_directors_description(locale)
    (send("#{locale}_board_of_directors_description") || en_board_of_directors_description).to_s.html_safe rescue nil
  end

  def get_firstname(locale)
    (send("#{locale}_firstname") || en_firstname).to_s.html_safe rescue nil
  end

  def get_lastname(locale)
    (send("#{locale}_lastname") || en_lastname).to_s.html_safe rescue nil
  end

  def get_position(locale)
    (send("#{locale}_position") || en_position).to_s.html_safe rescue nil
  end 

  def get_author(locale)
    (send("#{locale}_position") || en_position).to_s.html_safe rescue nil
  end

  def get_content(locale)
    (send("#{locale}_position") || en_position).to_s.html_safe rescue nil
  end 
end