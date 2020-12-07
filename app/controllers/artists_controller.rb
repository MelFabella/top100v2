class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all 
  end

  def show
  end

  def new
    @artist = Artist.new 
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect :new 
    else
      render :new
    end
  end 

  def edit
  end

  def update 
    if @artist.update(artist_params)
      redirect_to @artist 
    else 
      render :edit
    end
  end 

  def destroy 
    @artist.destroy
    redireect_to artists_path
  end 

  private
    def set_artist
      @artist = Artist.fine(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name, :rank, :numAlbs)
    end
  end
