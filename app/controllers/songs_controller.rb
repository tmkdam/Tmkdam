class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @songs = Song.all
    respond_with(@songs)
  end

  def show
    respond_with(@song)
  end

  def new
    @song = Song.new
    respond_with(@song)
  end

  def edit
  end

  def create
    @song = Song.new(song_params)
    @song.save
    respond_with(@song)
  end

  def update
    @song.update(song_params)
    respond_with(@song)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    respond_to do |format|
         format.js 
         format.html { respond_with(@song)}
     end
  end

    def ajax_delete_link
    @song = Song.find(params[:id])
    @song.destroy
      respond_to do |format|
        format.js
      end 
    end 


  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :album_id, :artist_id)
    end
end
