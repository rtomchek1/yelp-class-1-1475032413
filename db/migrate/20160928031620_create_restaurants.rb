class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :city
      t.text :neighborhood
      t.text :description
      t.text :address
      t.string :website
      t.integer :cover_photo_id

      t.timestamps

    end
  end
end
