class PagesController < ApplicationController
  def cookies
  end

  def home
    #Los ordene para que se mostraran los mas recientes creados porque eso es lo que necesito en mi vista home
    @animes = Anime.order("created_at desc").limit(4).paginate(page: params[:page], per_page: 3)
  end


end
