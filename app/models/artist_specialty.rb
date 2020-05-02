class ArtistSpecialty < ApplicationRecord
  belongs_to :specialty
  belongs_to :tattoo_artist
end
