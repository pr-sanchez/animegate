require 'test_helper'

class AnimesControllerTest < ActionController::TestCase
  setup do
    @anime = animes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anime" do
    assert_difference('Anime.count') do
      post :create, anime: { anime_episodes: @anime.anime_episodes, anime_size: @anime.anime_size, description: @anime.description, fansub: @anime.fansub, file_format: @anime.file_format, genre: @anime.genre, language: @anime.language, ovas: @anime.ovas, rating: @anime.rating, resolution: @anime.resolution, server: @anime.server, studio: @anime.studio, subtitles: @anime.subtitles, title: @anime.title, uploader: @anime.uploader, year: @anime.year }
    end

    assert_redirected_to anime_path(assigns(:anime))
  end

  test "should show anime" do
    get :show, id: @anime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anime
    assert_response :success
  end

  test "should update anime" do
    patch :update, id: @anime, anime: { anime_episodes: @anime.anime_episodes, anime_size: @anime.anime_size, description: @anime.description, fansub: @anime.fansub, file_format: @anime.file_format, genre: @anime.genre, language: @anime.language, ovas: @anime.ovas, rating: @anime.rating, resolution: @anime.resolution, server: @anime.server, studio: @anime.studio, subtitles: @anime.subtitles, title: @anime.title, uploader: @anime.uploader, year: @anime.year }
    assert_redirected_to anime_path(assigns(:anime))
  end

  test "should destroy anime" do
    assert_difference('Anime.count', -1) do
      delete :destroy, id: @anime
    end

    assert_redirected_to animes_path
  end
end
