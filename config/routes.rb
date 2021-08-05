Rails.application.routes.draw do
  resources :users
  resources :contacts
  resources :announcements
  resources :players
  resources :games
  resources :teams
  
  post '/login', to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
