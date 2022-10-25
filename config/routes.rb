Rails.application.routes.draw do

  resources :resources, only: [:index, :show, :create, :update, :destroy]
  resources :lessons, only: [:index]
  resources :phases
  resources :courses
  resources :schools, only:[:index, :show, :create, :update, :destroy]
  resources :educators
  resources :students, only: [:index]
  resources :school_owners, only: [:index]
  post "/signup", to: "students#create"
  post "/login", to: "sessions#create"
  get "/me", to: "students#show"
  delete "/logout", to: "sessions#destroy"



 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
