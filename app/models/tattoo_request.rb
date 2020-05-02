class TattooRequest < ApplicationRecord
  belongs_to :tattoo_artist
  belongs_to :specialty
  belongs_to :user
end
