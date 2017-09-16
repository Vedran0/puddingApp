class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :set_about_page, only: :index

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def create
    @song = Song.new(song_params)
    respond_to do |format|
      if @song.save
        format.html { redirect_to songs_path, notice: 'Song was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to songs_path, notice: 'Song was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url, notice: 'Song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :url)
    end

    def set_about_page
      @about_page = "<p>This is a list of our favorite songs.</p>
                      <p>Here you can play the soundtracks of our story.</p>
                      <p>Let's dance baby!.</p>"
    end

end
