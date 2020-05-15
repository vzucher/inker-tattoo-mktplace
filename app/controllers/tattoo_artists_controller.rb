class TattooArtistsController < ApplicationController

  def index
    @tattoo_artists = policy_scope(User)
  end

  def show
    @tattoo_artist = User.find(params[:id])
    authorize @tattoo_artist
  end
end
