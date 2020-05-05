class CreateTattoos < ActiveRecord::Migration[6.0]
  def change
    create_table :tattoos do |t|
      t.references :tattoo_request, null: false, foreign_key: true
      t.string :photos
      t.integer :likes

      t.timestamps
    end
  end
end
