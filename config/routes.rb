Rails.application.routes.draw do
  root 'pages#index'
  get '/main', to: 'pages#main'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end