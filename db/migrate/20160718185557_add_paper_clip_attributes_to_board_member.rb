class AddPaperClipAttributesToBoardMember < ActiveRecord::Migration[5.0]
  def change
    add_attachment :board_members, :photo
  end
end
