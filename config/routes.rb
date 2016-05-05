Rails.application.routes.draw do

  get "logout" => "sessions#destroy", as: "logout"
  get "login" => "sessions#new", as: "login"
  post "login" => "sessions#create", as: "new_login"


  resources :users, only: [:show, :new, :create]

  resources :appointments, only: [:index, :new, :create, :show, :update] do
  	resources :reviews, only: [:show, :create, :new]
  end

  root "index#index"
end
