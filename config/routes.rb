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

  get '/auth/:provider/callback', to: 'sessions#create' #this route takes me to this action to complet the login process

 
end
