class CreateUserPhotos < ActiveRecord::Migration
  def change
    create_table :user_photos do |t|
      t.string :image
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
