class ArtistsController < ApplicationController
  def new
  end

  def create
    @artist = Artist.new(params[:artist])

    @artist.save
    redirect_to @artist
  end

  def show
    @artist = Artist.find(params[:id])
  end

end
private
  def artist_params
    params.require(:artist).permit(:name, :painting)
  end
