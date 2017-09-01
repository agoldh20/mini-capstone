Rails.application.routes.draw do
  get '/' => 'drones#index'

  get '/drones/new' => 'drones#new'
  post '/drones' => 'drones#create'
  
  get '/drones' => 'drones#index'
  get '/drones/:id' => 'drones#show'


end
