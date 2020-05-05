class CreateTattooRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :tattoo_requests do |t|
      t.string :title
      t.text :description
      t.string :references_photos
      t.string :bodypart
      t.float :size
      t.references :user, null: false
      t.references :tattoo_artist, null: false
      t.references :specialty, null: false, foreign_key: true
      t.datetime :accepted_at

      t.timestamps
    end
  end
end
