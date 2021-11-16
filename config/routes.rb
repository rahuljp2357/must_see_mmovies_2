Rails.application.routes.draw do
  root :to => "movies#index"
  resources :characters
  resources :bookmarks
  resources :directors
  devise_for :users
  resources :users
  resources :casts
  resources :actors
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
