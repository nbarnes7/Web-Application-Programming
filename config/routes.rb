Rails.application.routes.draw do
  get 'courses/index'
  get 'sections/index'
  resources :sections
  resources :courses
  root 'home#index', as: 'home_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
