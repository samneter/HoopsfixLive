Rails.application.routes.draw do
  root :to => "home#index"
  get "/pages_submit", to: "pages#submit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
