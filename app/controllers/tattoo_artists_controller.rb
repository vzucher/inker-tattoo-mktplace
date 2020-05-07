class TattooArtistsController < ApplicationController

  def index
    @tattoo_artists = User.tattoo_artist
  end
end
