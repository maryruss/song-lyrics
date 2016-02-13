class LyricsController < ApplicationController

  def index
    @lyrics = Lyric.order("created_at DESC")
  end

  def new
    @lyric = Lyric.new
  end

  def create
    @lyric= Lyric.new(lyric_params)
    if @lyric.save
      redirect_to root_path
    else
        render text: params[:lyric].inspect
     end
  end

  private

  def lyric_params
    params.require(:lyric).permit(:author, :song_title, :song_lyric)
  end
end
