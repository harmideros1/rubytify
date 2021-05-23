class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :albums]

  # GET /artists
  def index
    @artists = Artist.all.order(popularity: :desc)
    render json: @artists
  end

  # GET /artists/1
  def show
    render json: @artist
  end

  # GET /artists/1/albums
  def albums
    render json: @artist.albums.as_json
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_params
      params.require(:artist).permit(:name, :image, :popularity, :spotify_url)
    end
end
