Rails.application.routes.draw do
  resources :organisations
  devise_for :users
  resources :memberships
  resources :games
  resources :live_stats
  resources :teams
  resources :competitions
  resources :streams
  resources :clubs
  resources :approve_game, only:[:update]
  root :to => "home#index"
  get "submit", to: "pages#submit"
  get "archive", to: "archive#index"
  get "about", to: "pages#about"
  put "approve_game/:id", to: "approve_game#update"
  get "/404", to: "errors#404"
  get "/422", to: "errors#422"
  get "/500", to: "errors#500"
  # match "/old_path_to_posts/:id", to: redirect("/posts/%{id}s")
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
