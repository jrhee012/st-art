class CreateLikedStreetArts < ActiveRecord::Migration[5.0]
  def change
    create_table :liked_street_arts do |t|
      t.integer :user_id
      t.integer :street_art_id

      t.timestamps
    end
  end
end
