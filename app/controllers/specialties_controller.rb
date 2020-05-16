class SpecialtiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def show
    @specialty = Specialty.find(params[:id])
  end

end
