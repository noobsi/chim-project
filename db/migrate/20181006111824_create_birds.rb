class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      #data
      t.string :bird_name,                  default: ""
      t.text :bird_info
      t.integer :bird_price,  null: false,  default: 0
      t.string :bird_voice

      t.integer :species_id, default: 1
      t.belongs_to :species

      t.timestamps null: false
    end
  end
end
