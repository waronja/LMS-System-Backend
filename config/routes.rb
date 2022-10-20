Rails.application.routes.draw do
  resources :schools
  resources :educators
  resources :students
  resources :school_owners
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
