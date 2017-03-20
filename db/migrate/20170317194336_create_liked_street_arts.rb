class CreateLikedStreetArts < ActiveRecord::Migration[5.0]
  def change
    create_table :liked_street_arts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :street_art, index: true

      t.timestamps
    end
  end
end
