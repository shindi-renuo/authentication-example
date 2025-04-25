Rails.application.routes.draw do
  resources :posts
  resource :session
  resource :registration, only: [ :new, :create ], path_names: { new: "sign_up" }
  resources :passwords, param: :token

  # Logout route
  get "logout" => "sessions#destroy", as: "logout"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "posts#index"
end
