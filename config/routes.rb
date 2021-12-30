Rails.application.routes.draw do
  devise_for :users
  resources :memberships
  resources :games
  resources :live_stats
  resources :clubs
  resources :competitions
  resources :streams
  resources :approve_game, only:[:update]
  root :to => "home#index"
  get "submit", to: "pages#submit"
  get "archive", to: "archive#index"
  get "about", to: "pages#about"
  put "approve_game/:id", to: "approve_game#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
