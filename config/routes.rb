Rails.application.routes.draw do

  resources :resources, only: [:index, :show, :create, :update, :destroy]
  resources :lessons
  resources :phases
  resources :courses
  resources :schools, only:[:index, :show, :create, :update, :destroy]
  resources :educators
  resources :students
  resources :school_owners, only:[:index]


 
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
