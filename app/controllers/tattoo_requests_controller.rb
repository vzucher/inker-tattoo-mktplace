class TattooRequestsController < ApplicationController
  before_action :find_tattoo_artist, only: %i[new create show destroy edit update]
  before_action :find_tattoo_request, only: %i[show destroy edit update]
  # Any kind of user should be able to create a Tattoo Request
  # Kinds of User: 'tattoo_artist', "user"
  # A User should not be able to edit/update any tattoo request, it is unique
  # A User should be able to destroy their own Tattoo Requests at any given time
  # A User should not be able to destroy a Tattoo Request once is accepted by a Tattoo Artist
  # A User should only be able to see its own Tattoo Requests

  def index
    if current_user.tattoo_artist?
      @tattoo_requests = TattooRequest.where(tattoo_artist: current_user) # (where user = user)
    else
      @tattoo_requests = TattooRequest.where(user: current_user) # (where user = user)
    end
  end

  def show; end

  def new
    @tattoo_request = TattooRequest.new
    @specialties = Specialty.all
    # @tattoo_request.tattoo_artist = @tattoo_artist
   # @tattoo_request.user = current_user
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

  def edit
  end

  def update
    if params[:decision] == "accept"
      @tattoo_request.touch(:accepted_at)
      redirect_to thankyou_path, notice: "Requisição de tattoo feita!"
    elsif params[:decision] == "decline"
      @tattoo_request.touch(:declined_at)
      redirect_to tattoo_artist_tattoo_requests_path(params[:tattoo_artist_id]), notice: "Requisição de tattoo cancelada!"
    end
  end

  private

  def find_tattoo_artist
    @tattoo_artist = User.find(params[:tattoo_artist_id])
  end

  def find_tattoo_request
    @tattoo_request = TattooRequest.find(params[:id])
  end

  def tattoo_request_params
    params.require(:tattoo_request).permit(:title, :description, :references_photos, :bodypart, :size, :user_id, :tattoo_artist_id, :specialty_id, :accepted_at)
  end
end
