class AddColumnUserIdToMessages < ActiveRecord::Migration[7.2]
  def up
    add_column :messages, :user_id, :int
  end

  def down
    remove_column :messages, :user_id, :int
  end
end
