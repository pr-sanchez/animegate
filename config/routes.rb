Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  resources :animes do
  	  collection do
  	  	get 'search'
  	  end

  	  resources :reviews, except: [:show, :index]
  end

  root 'animes#index'
end
