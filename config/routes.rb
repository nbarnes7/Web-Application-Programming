Rails.application.routes.draw do
  devise_for :users
  resources :enrollments
  resources :students
  get 'courses/index'
  get 'sections/index'
  get 'students/index'
  get 'enrollments/index'
  resources :sections
  resources :courses
  root 'home#index', as: 'home_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
