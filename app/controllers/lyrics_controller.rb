class LyricsController < ApplicationController

  def index
    @lyric = Lyric.all
  end

  def new
    @lyric = Lyric
  end

end
