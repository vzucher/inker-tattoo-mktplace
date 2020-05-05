class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :type, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :photo, :string
    add_column :users, :username, :string
    add_column :users, :experience, :integer
    add_column :users, :phone_number, :string

  end
end
