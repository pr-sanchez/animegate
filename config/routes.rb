Rails.application.routes.draw do
  devise_for :users
  resources :animes

  root 'animes#index'
  
end
