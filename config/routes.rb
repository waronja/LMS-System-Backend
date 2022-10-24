Rails.application.routes.draw do

  resources :resources, only: [:index, :show, :create, :update, :destroy]
  resources :lessons, only: [:index]
  resources :phases
  resources :courses
  resources :schools, only:[:index, :show, :create, :update, :destroy]
  resources :educators, only:[:index]
  # resources :students 
  resources :school_owners
  post "/signup", to: "students#create"
  # post "/signup", to: "educators#create"
  get "/me", to: "students#show"
  # get "/me", to: "educators#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


 
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
