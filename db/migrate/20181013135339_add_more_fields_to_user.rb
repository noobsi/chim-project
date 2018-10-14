class AddMoreFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :birthdate, :datetime
    add_column :users, :sex, :string
    add_column :users, :phone, :string
  end
end
