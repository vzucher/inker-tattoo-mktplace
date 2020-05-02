class TattooArtistsController < ApplicationController
  before_action :set_tattoo_artist, only: %i[show edit update destroy]
  def index
    @tattooartists = TattooArtist.all
  end

  def show; end

  def new
    @tattooartist = TattooArtist.new
  end

  def create
    @tattooartist = TattooArtist.new(tattoo_artist_params)
    @tattooartist.save
    redirect_to tattooartist_path(@tattooartist)
  end

  def edit; end

  def update
    @tattooartist.update(tattoo_artist_params)
    redirect_to tattooartist_path(@tattooartist)
  end

  def destroy
    @tattooartist.destroy
    redirect_to tattooartists_path
  end

  private

  def set_tattoo_artist
    @tattooartist = TattooArtist.find(params[:id])
  end

  def tattoo_artist_params
    params.require(:tattooartist).permit(:first_name, :last_name, :phonenumber, :email, :city, :experience, :photo)
  end
end
