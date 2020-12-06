Rails.application.routes.draw do
  resources :stylists, except: [:new]
  resources :clients
  resources :appointments

  #signing up
  get '/signup', to: 'stylists#new'
 # get 'clients/signup', to: 'clients#new'
 
  #logging in
  
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'

end
