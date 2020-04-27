class ArtistsController < ApplicationController
    def new
        @artist = Artist.new
    end

    def show
        @artist = find_by()
    end

    def create
        @artist = Artist.create(strong_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = find_by()
    end

    def update
        @artist = find_by()
        @artist.update(strong_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    private

        def strong_params(*args)
            params.require(:artist).permit(*args)
        end

        def find_by
            Artist.find_by(id: params[:id])
        end
end
