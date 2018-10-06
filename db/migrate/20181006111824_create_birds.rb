class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :bird_name
      t.text :bird_info
      t.integer :bird_price
      t.string :bird_voice
      t.belongs_to :species

      t.timestamps null: false
    end
  end
end
