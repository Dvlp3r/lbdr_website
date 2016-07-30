class BrandBanner < ApplicationRecord
  include CommonMethods
  
  has_attached_file :photo, styles: { big: "1920x800<", thumb: "275x135#" }, default_url: "/images/missing.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
