Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  get 'books/show'
  get 'books/index'
  devise_for :users
  root to: 'homes#top'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
