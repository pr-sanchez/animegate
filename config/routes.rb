Rails.application.routes.draw do



get "animes/anohana" => "animes#anohana"
get "animes/2" => "animes#2"
get "animes/3" => "animes#3"

get "cookies" => 'cookies#index'  #Asi se redirecciona una ruta, por ejemplo aqui en vez de usar cookies_index_path y me saliera en el url cookies/index,  con esto lo acorte a cookies_path con url cookies
get "animes" => 'animes#index'
get "news" => 'posts#index'

  resources :posts do
    resources :comments
  end

  root "home#index"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users
  resources :animes do
  	  collection do
  	  	get 'search'
  	  end

  	  resources :reviews, except: [:show, :index]
  end

end
