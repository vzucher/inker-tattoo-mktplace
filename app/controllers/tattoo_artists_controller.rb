class TattooArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    # @tattoo_artists = policy_scope(User)
    @tattoo_artists = User.all
  end

  def show
    @tattoo_artist = User.find(params[:id])
  end
end
