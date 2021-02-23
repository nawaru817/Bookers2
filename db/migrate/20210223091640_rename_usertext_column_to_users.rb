class RenameUsertextColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :usertext, :introduction
  end
end
