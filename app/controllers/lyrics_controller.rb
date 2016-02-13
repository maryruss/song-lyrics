class LyricsController < ApplicationController

  def index
    @lyrics = Lyric.all
  end

  def new
    @lyrics = Lyric.new
  end

end
