class ArtistsController < ApplicationController

    def new
        @artist = Artist.new
    end

    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def create
        @artist = Artist.create(artist_params)
        # byebug
        if @artist.valid?
            redirect_to artist_path(@artist)
        else
            flash[:error] = @artist.errors.full_messages
            redirect_to new_artist_path
        end
    end
    
    def update
        @artist = Artist.find(params[:id])
        
        if @artist = Artist.update(artist_params)
            redirect_to artist_path(@artist)
        else
            flash[:error] = @artist.errors.full_messages
            redirect_to edit_artist_path
        end
    end

    private 

    def artist_params
        params.require(:artist).permit(:name, :age, :title, :instruments)
    end


end
