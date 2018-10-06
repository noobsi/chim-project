class CreateBirdImages < ActiveRecord::Migration
  def change
    create_table :bird_images do |t|
      t.string :image
      t.belongs_to :bird

      t.timestamps null: false
    end
  end
end
