class Post < ApplicationRecord
  include CommonMethods
  belongs_to :post_category
  validates :post_category_id, presence: true
end
