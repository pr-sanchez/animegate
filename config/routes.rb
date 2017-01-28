Rails.application.routes.draw do




get "cookies" => 'cookies#index'  #Asi se redirecciona una ruta, por ejemplo aqui en vez de usar cookies_index_path y me saliera en el url cookies/index,  con esto lo acorte a cookies_path con url cookies

  resources :posts do
    resources :comments
  end


  root "posts#index"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users
  resources :animes do
  	  collection do
  	  	get 'search'
  	  end

  	  resources :reviews, except: [:show, :index]
  end

end
