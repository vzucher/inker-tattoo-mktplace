class AddTattooPhotoToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :tattoo_photo, :string
  end
end
