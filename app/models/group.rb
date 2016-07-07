class Group < ApplicationRecord
  has_many :executives
  has_attached_file :photo, styles: { big: "1920x800<", thumb: "150x150#" }, default_url: "/images/missing.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  def self.executive_committee

    return false if first.nil?

    first.executives.where(position: 'Executive Committee')
  end

  def self.board_of_directors
    return false if first.nil?
    
    first.executives.where(position: 'Board of Directors')
  end

end
