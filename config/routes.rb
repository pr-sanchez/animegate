Rails.application.routes.draw do
  

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
