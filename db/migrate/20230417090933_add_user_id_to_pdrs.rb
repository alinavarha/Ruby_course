class AddUserIdToPdrs < ActiveRecord::Migration[7.0]
  def change
    add_column :pdrs, :user_id, :integer
    add_index :pdrs, :user_id
  end
end
