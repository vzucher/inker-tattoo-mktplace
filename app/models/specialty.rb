class Specialty < ApplicationRecord
  def index
    @specialities = Specialty.all
  end
end
