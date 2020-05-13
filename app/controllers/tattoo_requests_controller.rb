class TattooRequestsController < ApplicationController
  before_action :find_tattoo_artist, only: %i[new create show destroy]

  # Any kind of user should be able to create a Tattoo Request
  # Kinds of User: 'tattoo_artist', "user"
  # A User should not be able to edit/update any tattoo request, it is unique
  # A User should be able to destroy their own Tattoo Requests at any given time
  # A User should not be able to destroy a Tattoo Request once is accepted by a Tattoo Artist
  # A User should only be able to see its own Tattoo Requests

  def index
    @tattoo_requests = TattooRequest.all # (where user = user)
  end

  def show; end

  def new
    @tattoo_request = TattooRequest.new
    @specialties = Specialty.all
   # @tattoo_request.user = current_user
    # @tattoo_request.tattoo_artist = @tattoo_artist
    # authorize @tattoo_request
  end

  def create
    @tattoo_request = TattooRequest.new(tattoo_request_params)
    @tattoo_request.tattoo_artist = @tattoo_artist
    @tattoo_request.user = current_user


    @tattoo_request.save!
    redirect_to tattoo_artist_tattoo_requests_path(params[:tattoo_artist_id]), notice: "Requisição de tattoo feita!"
  end

  def detroy
    @tattoo_request.destroy
    redirect_to tattoo_request_path
    authorize @restaurant
  end
  private
  def find_tattoo_artist
    @tattoo_artist = User.find(params[:tattoo_artist_id])
  end

  def find_tattoo_request
    @tattoorequest = TattooRequest.find(params[tattoo_artist])
  end

  def tattoo_request_params
    params.require(:tattoo_request).permit(:title, :description, :references_photos, :bodypart, :size, :user_id, :tattoo_artist_id, :specialty_id, :accepted_at)
  end
end
