class SpecialtiesController < ApplicationController

  def show
    @specialty = Specialty.find(params[:id])
  end

end
