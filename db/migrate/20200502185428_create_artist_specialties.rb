class CreateArtistSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_specialties do |t|
      t.integer :rating
      t.references :specialty, null: false, foreign_key: true
      t.references :tattooartist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
