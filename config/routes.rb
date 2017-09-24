Rails.application.routes.draw do
  get '/drones' => 'drones#index'

  get '/drones/new' => 'drones#new'
  post '/drones' => 'drones#create'

  get '/drones/:id' => 'drones#show'

  get '/drones/:id/edit' => 'drones#edit'
  patch '/drones/:id' => 'drones#update'

  delete '/drones/:id' => 'drones#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/orders/new' => 'orders#new'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/cart'


end
