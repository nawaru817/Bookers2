class AddUsertextToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :usertext, :text
  end
end
