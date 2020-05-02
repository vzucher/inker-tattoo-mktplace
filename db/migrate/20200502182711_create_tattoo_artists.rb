class CreateTattooArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :tattoo_artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :phonenumber
      t.string :email
      t.string :city
      t.integer :experience
      t.string :photo

      t.timestamps
    end
  end
end
