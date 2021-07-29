Rails.application.routes.draw do

  resources :appointments

  resources :stylists, except: [:new] do 
  resources :appointments, only: [:show, :index, :new, :edit]
  end

  resources :clients, only: [:index]
 
  get '/', to: 'stylists#home'
  get '/signup', to: 'stylists#new'
 
  
  get '/login', to:'sessions#login'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  #get '/auth/google_oauth2', to: 'sessions#create'
  get '/auth/:provider/callback', to: 'sessions#create' 
  

  get '/most_requested', to: 'services#most_requested'
end

