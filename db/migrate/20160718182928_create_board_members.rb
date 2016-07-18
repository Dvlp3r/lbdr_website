class CreateBoardMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :board_members do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :position
      t.string :governance_type
      t.integer :group_id
      t.timestamps
    end
  end
end
