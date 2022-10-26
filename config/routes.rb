Rails.application.routes.draw do

  resources :resources, only: [:index, :show, :create, :update, :destroy]
  resources :lessons, only: [:index]
  resources :phases
  resources :courses
  resources :schools, only:[:index, :show, :create, :update, :destroy]
  resources :educators, only: [:index]
<<<<<<< HEAD
  resources :students, only: [:index, :show]
  resources :school_owners, only: [:index, :create]
  # post "/signup", to: "students#create"
=======
  resources :students, only: [:index]
  resources :school_owners, only: [:index]
  post "/student", to: "students#create"
>>>>>>> e5c4deeda56040bd1574db49533b6797957ac02a
  post "/login", to: "sessions#create"
  get "/me", to: "students#show"
  get "/mi", to: "educators#show"

  delete "/logout", to: "sessions#destroy"
  post "/educator", to: "educators#create"



 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
