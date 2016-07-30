class SectorBrand < ApplicationRecord
  include CommonMethods
  
  belongs_to :sector
  belongs_to :brand
end
