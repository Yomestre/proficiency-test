Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  resources :courses, only: [:index, :show, :new, :create]
  resources :classrooms, only: [:new, :create]
  root 'welcome#index'
end
