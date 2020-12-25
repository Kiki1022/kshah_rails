Rails.application.routes.draw do

  resources :stylists, except: [:new] do 
  resources :appointments
  end

  resources :appointments
  resources :clients
 
  get '/', to: 'stylists#home'
  get '/signup', to: 'stylists#new'
 
  
  get '/login', to:'sessions#login'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'

  get '/auth/:provider/callback', to: 'sessions#create'

 
end
