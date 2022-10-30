Rails.application.routes.draw do
 namespace :api do
  resources :resources, only: [:index, :show, :create, :update, :destroy]
  resources :lessons, only: [:index, :create, :destroy]
  resources :phases
  resources :courses
  resources :schools, only:[:index, :show, :create, :update, :destroy]
  resources :educators, only: [:index]
  resources :students, only: [:index]
  resources :school_owners, only: [:index,:destroy,:create]
  post "/student", to: "students#create"
  post "/login", to: "sessions#create"
  get "/me", to: "students#show"
  get "/mi", to: "educators#show"
  get "/mu", to: "school_owners#show"
  
  
  delete "/logout", to: "sessions#destroy"
  post "/educator", to: "educators#create"
end
get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
