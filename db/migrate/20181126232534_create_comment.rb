class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.references :review, index: true, foreign_key: true
    end
  end
end
