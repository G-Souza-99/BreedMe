class AddOwnerToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :owner, foreign_key: { to_table: :users }, null: false
    add_index :chatrooms, %i[owner_id user_id], unique: true
  end
end
