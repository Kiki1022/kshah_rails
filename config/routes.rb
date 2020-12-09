Rails.application.routes.draw do
  resources :stylists, except: [:new]
  resources :appointments
  resources :clients
 
  get '/', to: 'stylists#home'
  #signing up
  get '/signup', to: 'stylists#new'
 
 
  #logging in
  
  get '/login', to:'sessions#login'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'

end
