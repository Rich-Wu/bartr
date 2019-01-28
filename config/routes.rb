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
  get '/offers', to: 'offers#index'
  get '/offer/new', to: 'offers#new'
  post '/offer/new', to: 'offers#create'
  get '/offer/:id', to: 'offers#read', as: 'offer'
  get '/offer/:id/edit', to: 'offers#update', as: 'update_offer'
  patch '/offer/:id/edit', to: 'offers#edit'
  get '/offer/:id/trade', to: 'trades#new', as: 'new_trade'
  post '/offer/:id/trade', to: 'trades#create'
  get '/:username', to: 'users#read', as: 'user_path'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
