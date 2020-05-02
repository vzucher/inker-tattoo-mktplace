class TattooRequest < ApplicationRecord
  belongs_to :tattooartist
  belongs_to :specialty
  belongs_to :user
end
