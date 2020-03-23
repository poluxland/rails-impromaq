Rails.application.routes.draw do
  resources :horas
  resources :trabajos
  devise_for :users
  root to: 'pages#home'

  #get '*path' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end