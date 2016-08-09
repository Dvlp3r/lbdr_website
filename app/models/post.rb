class Post < ApplicationRecord
  include CommonMethods
  belongs_to :post_category  
end
