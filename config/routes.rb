Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users/sign_in', to: 'users#new_user_session'
  post '/users/sign_in', to: 'users#create_user_session'

  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :show, :index]
end
