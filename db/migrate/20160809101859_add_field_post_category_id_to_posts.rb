class AddFieldPostCategoryIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :post_category_id, :integer
  end
end