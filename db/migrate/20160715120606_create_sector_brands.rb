class CreateSectorBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :sector_brands do |t|
      t.belongs_to :sector, index: true
      t.belongs_to :brand, index: true
      t.timestamps
    end
  end
end
