class AddUserIdToTattoos < ActiveRecord::Migration[6.0]
  def change
    t.references :tattoo, foreign_key: true
  end
end
