Rails.application.routes.draw do

root 'sites#index'  
  resources :movies  
  resources :actors
  resources :site

end
