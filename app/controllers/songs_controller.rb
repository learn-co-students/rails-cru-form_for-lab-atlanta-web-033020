class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(strong_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def show
        @song = find_by(params[:id])
        @genre = @song.genre
        @artist = @song.artist
    end

    def edit
        @song = find_by(params[:id])
    end

    def update
        @song = find_by(params[:id])
        @song.update(strong_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    private
        def strong_params(*args)
            params.require(:song).permit(*args)
        end

        def find_by(id)
            Song.find_by(id: id)
        end
end
