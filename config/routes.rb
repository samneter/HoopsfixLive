Rails.application.routes.draw do
  resources :seasons
  resources :organisations
  devise_for :users
  resources :memberships
  resources :games
  resources :live_stats
  resources :teams
  resources :competitions
  resources :streams
  resources :approve_game, only:[:update]
  root :to => "home#index"
  get "submit", to: "pages#submit"
  get "archive", to: "archive#index"
  get "about", to: "pages#about"
  put "approve_game/:id", to: "approve_game#update"
  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unacceptable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  # match "/old_path_to_posts/:id", to: redirect("/posts/%{id}s")
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
