class GenresController < ApplicationController
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(strong_params(:name))
        redirect_to genre_path(@genre)
    end

    def show
        @genre = find_by(params[:id])
    end

    def edit
        @genre = find_by(params[:id])
    end

    def update
        @genre = find_by(params[:id])
        @genre.update(strong_params(:name))
        redirect_to genre_path(@genre)
    end

    private
        def strong_params(*args)
            params.require(:genre).permit(*args)
        end

        def find_by(id)
            Genre.find_by(id: id)
        end
end
