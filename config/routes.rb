Rails.application.routes.draw do
  resources :users
  resources :contacts
  resources :announcements
  resources :players
  resources :games
  resources :teams
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
