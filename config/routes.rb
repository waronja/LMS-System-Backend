Rails.application.routes.draw do

  resources :resources, only: [:index, :show, :create, :update, :destroy]
  resources :lessons, only: [:index, :create, :destroy]
  resources :phases
  resources :courses
  resources :schools, only:[:index, :show, :create, :update, :destroy]
  resources :educators, only: [:index, :create, :destroy]
  resources :students, only: [:index]
  resources :school_owners, only: [:index,:destroy,:create]
  post "/student", to: "students#create"
  post "/login", to: "sessions#create"
  get "/me", to: "students#show"
  get "/mi", to: "educators#show"
  get "/mu", to: "school_owners#show"
  # post"/school_owner", to: "school_owners#create"
  
  delete "/logout", to: "sessions#destroy"
  post "/educator", to: "educators#create"


end
