Rails.application.routes.draw do

  resources :stylists, except: [:new] do 
    resources :appointments, :only => [:new, :create, :show, :index]
  end
  resources :appointments, :only => [:index]
  resources :clients
 
  get '/', to: 'stylists#home'
  #signing up
  get '/signup', to: 'stylists#new'
 
 
  #logging in
  
  get '/login', to:'sessions#login'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'

end
# /authors/:author_id/posts
# author_posts_path(author_id) # all posts nested under an author
#author_post_path(author_id, post_id) #nested show page
