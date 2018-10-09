class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :species_name
      t.text :species_info
      t.integer :min_price,  default: 0
      t.integer :max_price,  default: 0

      t.timestamps null: false
    end
  end
end
