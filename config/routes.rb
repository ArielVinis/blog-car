Rails.application.routes.draw do
  root "home#index"
  resources :home
  resources :vehicles, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  # when you want to create a resource with all actions, you can use the following:
  resources :clients
  
  # when you want to create a resource with only some actions, you can use the following:
  # resources :clients, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  get "up" => "rails/health#show", as: :rails_health_check

end
