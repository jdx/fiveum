Fiveum::Application.routes.draw do
  root to: 'topics#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  get 'signup' => 'users#new'

  resources :users

  resources :topics
end
