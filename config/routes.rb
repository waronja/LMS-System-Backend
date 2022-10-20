Rails.application.routes.draw do
  resources :resources, only: [:index, :show, :create, :update, :destroy]
  resources :lessons
  resources :phases
  resources :courses
  resources :schools, only:[:index, :show, :create, :update, :destroy]
  resources :educators
  resources :students
  resources :school_owners
end
