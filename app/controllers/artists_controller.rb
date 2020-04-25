class ArtistsController < ApplicationController

  def show
    @artist = Artist.find_by(id: params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find_by(id: params[:id])
    @artist.update(artist)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit!
  end

end
