class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :comment

      t.integer :rating,  null: false,  default: 0

      t.integer :rating_appearance,  null: false,  default: 0
      t.integer :rating_voice,  null: false,  default: 0
      t.integer :rating_health,  null: false,  default: 0
      t.integer :rating_price,  null: false,  default: 0
      t.integer :rating_easy,  null: false,  default: 0

      t.belongs_to :user, null: false,  default: 1
      t.belongs_to :bird, null: false,  default: 1

      t.timestamps null: false
    end
  end
end
