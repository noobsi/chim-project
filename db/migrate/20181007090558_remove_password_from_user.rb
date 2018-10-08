class RemovePasswordFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :user_password, :string
  end
end
