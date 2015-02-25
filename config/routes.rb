Rails.application.routes.draw do

<<<<<<< HEAD
root 'sites#index'  
  resources :movies  
  resources :actors
  resources :site
=======
  resources :movies
  resources :actors

  post '/movies/:id/actors/new' => 'movies#add_actor', as: :add_actor
  delete 'movies/:id/actors/:actor_id' => 'movies#remove_actor', as: :remove_actor

  post '/actors/:id/movies/new' => 'actors#add_movie', as: :add_movie
  delete '/actors/:id/movies/:movie_id' => 'actors#remove_movie', as: :remove_movie

  root 'site#index'
>>>>>>> b6f563e4e6ddbbc2addd3b2b5d4ed2beb35a8b05

end
