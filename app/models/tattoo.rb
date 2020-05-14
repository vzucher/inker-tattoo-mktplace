class Tattoo < ApplicationRecord
  belongs_to :tattoo_request
  belongs_to :tattoo_artist, class_name: "User"
end
