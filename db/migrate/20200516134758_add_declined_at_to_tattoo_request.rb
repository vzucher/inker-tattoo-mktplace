class AddDeclinedAtToTattooRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :tattoo_requests, :declined_at, :timestamp
  end
end
