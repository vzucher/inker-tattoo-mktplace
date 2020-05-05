class TattooRequest < ApplicationRecord
  belongs_to :user
  belongs_to :specialty
  belongs_to :tattoo_artist, class_name: "User"
end
