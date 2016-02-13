class LyricsController < ApplicationController

  def index
    @lyrics = Lyric.all
  end

  def new
    @lyric = Lyric.new
  end

  def create
    Lyric.create(lyric_params)
    redirect_to root_path
  end

  private

  def lyric_params
    params.require(:lyric).permit(:author, :song_title, :song_lyric)
  end
end
