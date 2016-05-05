Rails.application.routes.draw do

  get "logout" => "sessions#destroy", as: "logout"
  get "login" => "sessions#new", as: "login"
  post "login" => "sessions#create", as: "new_login"


  resources :users, only: [:show, :new, :create] do
  end
  
  resources :appointments, only: [:index, :new, :create, :update, :show] do
  end

  root "index#index"
end
