class PlaylistsController < ApplicationController
  require 'uri'

  def index
    if params[:query]
      q = URI.encode(params[:query])
      search_type = URI.encode(params[:choice].first)
      logger.info("Spotify query submitted: " + search_type)
      @results = Spotify.search(search_type, q)
    end
  end

  def show
  end

  def update
  end

  def destroy
  end
end
