class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :species_name
      t.text :species_info

      t.timestamps null: false
    end
  end
end
