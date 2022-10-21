Rails.application.routes.draw do
  resources :resources
  resources :lessons
  resources :phases
  resources :courses

  resources :schools, only:[:index]
  resources :educators
  resources :students
  resources :school_owners

 
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
