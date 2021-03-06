Rails.application.routes.draw do

resources :questions do
  resources :answers
end

root 'pages#home'
get "animes" => 'animes#index'
get "news" => 'posts#index'
match '/users/',   to: 'users#index',   via: 'get'
match '/users/:id',     to: 'users#show',       via: 'get' #para hacer amigable los users quita el users/ y redirecciona al user directamente
get "forum" => 'forum#index'
get 'cookies' => 'pages#cookies' #asi se redirecciona otra ruta de un metodo que esta dentro de un controlador, no como el de abajo que comente que es con metodo index controllador cookies, aqui el controlador es pages y el metodo es cookies
get 'staff' => 'pages#staff'
get 'afiliacion', to: 'messages#new', as: 'afiliacion'
post 'afiliacion', to: 'messages#create'


  resources :posts do
    resources :comments
  end


  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users, :path_prefix => '/d'
  resources :users, :only =>[:show]

  resources :animes do
  	  collection do
  	  	get 'search'
  	  end

  	  resources :reviews, except: [:show, :index]
  end

  devise_scope :user do
     get '/d/users/sign_out' => 'devise/sessions#destroy'
   end




   #match '/users/:id',     to: 'users#show',       via: 'get'  #antes estaba asi pero me trajo conflictos al no saber redireccionar bien
   #get "animes/anohana" => "animes#anohana"
   #get "animes/2" => "animes#2"
   #get "animes/3" => "animes#3"
   #get "cookies" => 'cookies#index'  #Asi se redirecciona una ruta, por ejemplo aqui en vez de usar cookies_index_path y me saliera en el url cookies/index,  con esto lo acorte a cookies_path con url cookies

end
