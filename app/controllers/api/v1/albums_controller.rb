class AlbumsController < ApplicationController
  before_action :set_album, only: [:show]

  # GET /albums
  def index
    @albums = Album.all

    render json: @albums
  end

  # GET /albums/1
  def show
    render json: @album
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def album_params
      params.require(:album).permit(:name, :image, :spotify_url, :total_tracks, :spotify_id)
    end
end
