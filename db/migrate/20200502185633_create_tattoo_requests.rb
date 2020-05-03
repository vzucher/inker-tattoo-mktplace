class CreateTattooRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :tattoo_requests do |t|
      t.string :title
      t.text :description
      t.string :references_photos
      t.string :bodypart
      t.integer :size
      t.references :tattoo_artist, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
