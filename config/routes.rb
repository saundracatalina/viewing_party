Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/registration', to: 'users#new'

  resources :users, only: [:create]

  resources :dashboard, only: [:index]

  get '/discover', to: 'movies#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
