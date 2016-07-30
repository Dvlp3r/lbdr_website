class BoardMember < ApplicationRecord
  include CommonMethods
  
  belongs_to :group

  has_attached_file :photo, styles: { thumb: "150x150#" }, default_url: "/images/missing.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
