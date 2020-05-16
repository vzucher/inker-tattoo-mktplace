class AddDeclinedAtToTattooRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :tattoo_requests, :declined_at, :datetime
  end
end
