class AnimesController < ApplicationController
  before_action :set_anime, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def search
    if params[:search].present?
      @animes = Anime.search(params[:search])
    else
      @animes = Anime.all
    end
  end

  def index
    @animes = Anime.all.paginate(page: params[:page], per_page: 7)
  end

  def show
    @reviews = Review.where(anime_id: @anime.id).order("created_at DESC")
    
    if @reviews.blank?
      @avg_review = 0
    else
      @avg_review = @reviews.average(:rating).round(2)
    end
  end

  def new
    @anime = current_user.animes.build
  end

  def edit
  end

  def create
    @anime = current_user.animes.build(anime_params)

    respond_to do |format|
      if @anime.save
        format.html { redirect_to @anime, notice: 'Anime was successfully created.' }
        format.json { render :show, status: :created, location: @anime }
      else
        format.html { render :new }
        format.json { render json: @anime.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @anime.update(anime_params)
        format.html { redirect_to @anime, notice: 'Anime was successfully updated.' }
        format.json { render :show, status: :ok, location: @anime }
      else
        format.html { render :edit }
        format.json { render json: @anime.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @anime.destroy
    respond_to do |format|
      format.html { redirect_to animes_url, notice: 'Anime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_anime
      @anime = Anime.find(params[:id])
    end

    def anime_params
      params.require(:anime).permit(:title, :description, :anime_size, :studio, :rating, :fansub, :language, :subtitles, :ovas, :resolution, :file_format, :anime_episodes, :server, :uploader, :year, :genre, :image)
    end
end
