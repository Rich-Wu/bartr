Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    get '/user', to: 'users#self', as: 'info'
    get '/user/:username', to: 'users#show', as: 'show_user'
    get '/offer/:id', to: 'offers#show', as: 'show_offer'
    post '/offer/new', to: 'offers#create', as: 'create_offer'
    delete '/offer/:id', to: 'offers#destroy', as: 'destroy_offer'
    patch '/offer/:id', to: 'offers#update', as: 'update_offer'
  end
  root 'pages#index'
  get '/main', to: 'pages#main'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#delete'
  get '/signup', to: 'users#new', as: :signup
  post '/signup', to: 'users#create'
  post '/trade/:id/accept', to: 'trades#accept', as: 'accept'
  post '/trade/:id/decline', to: 'trades#decline', as: 'decline'
  post '/trade/:id/counter', to: 'trades#counter', as: 'counter'
  post '/trade/:id/complete', to: 'trades#complete', as: 'complete'
  get '/trades', to: 'trades#index'
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
  get '/:username', to: 'users#read', as: 'user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
