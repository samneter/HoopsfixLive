Rails.application.routes.draw do
  resources :streams
  root :to => "home#index"
  get "submit", to: "pages#submit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
