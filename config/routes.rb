Rails.application.routes.draw do
  root 'pages#index'
  get '/main', to: 'pages#main'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#delete'
  get '/signup', to: 'users#new', as: :signup
  post '/signup', to: 'users#create'
  get '/account', to: 'users#update'
  patch '/account', to: 'users#newinfo'
  get '/offer/new', to: 'offers#new'
  get '/:username', to: 'users#read'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
