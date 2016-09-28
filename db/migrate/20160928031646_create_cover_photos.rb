class CreateCoverPhotos < ActiveRecord::Migration
  def change
    create_table :cover_photos do |t|
      t.integer :restaurant_id
      t.string :cover_photo

      t.timestamps

    end
  end
end
