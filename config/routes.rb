Rails.application.routes.draw do

  devise_for :users
  
  resources :animes do
  	  resources :reviews, except: [:show, :index]
  end

  root 'animes#index'
end
