Rails.application.routes.draw do
  get 'pets/index'

  get 'pets/new'

  get 'pets/edit'

  get 'pets/show'

  get 'pets' => 'pets#index'

  root 'main#index'

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  get 'logout' => 'sessions#destroy'

  resources :pets
  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
