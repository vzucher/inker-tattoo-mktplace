class TattooArtistsController < ApplicationController

  def index
    # @tattoo_artists = policy_scope(User)
    @tattoo_artists = User.all
  end

  def show
    @tattoo_artist = User.find(params[:id])
  end
end
