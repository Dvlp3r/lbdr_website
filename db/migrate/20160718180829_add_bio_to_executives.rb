class AddBioToExecutives < ActiveRecord::Migration[5.0]
  def change
    add_column :executives, :bio, :text
  end
end
