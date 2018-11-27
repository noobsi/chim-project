class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :content
      t.belongs_to :user, null: false,  default: 1
      t.belongs_to :review, null: false,  default: 1

      t.timestamps null: false
    end
  end
end
