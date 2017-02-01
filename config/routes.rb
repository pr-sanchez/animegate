Rails.application.routes.draw do





root 'pages#home'

get "animes/anohana" => "animes#anohana"
get 'cookies' => 'pages#cookies' #asi se redirecciona otra ruta de un metodo que esta dentro de un controlador, no como el de abajo que comente que es con metodo index controllador cookies, aqui el controlador es pages y el metodo es cookies
get "animes/2" => "animes#2"
get "animes/3" => "animes#3"
#get "cookies" => 'cookies#index'  #Asi se redirecciona una ruta, por ejemplo aqui en vez de usar cookies_index_path y me saliera en el url cookies/index,  con esto lo acorte a cookies_path con url cookies
get "animes" => 'animes#index'
get "news" => 'posts#index'

  resources :posts do
    resources :comments
  end


  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users
  resources :animes do
  	  collection do
  	  	get 'search'
  	  end

  	  resources :reviews, except: [:show, :index]
  end

end
