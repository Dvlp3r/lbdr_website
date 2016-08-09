class CreateConnectors < ActiveRecord::Migration[5.0]
  def change
    create_table :connectors do |t|
      t.text :header
      t.text :footer

      t.timestamps
    end
  end
end
