Rails.application.routes.draw do
  resources :students, only: [:new, :create, :index]
  resources :courses, only: [:new, :create, :index]
end
