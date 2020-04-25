class GenresController < ApplicationController

  def show
    @genre = Genre.find_by(id: params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find_by(id: params[:id])
    @genre.update(genre)
    redirect_to genre_path(@genre)
  end

  private

  def genre_params
    params.require(:genre).permit!
  end

end
