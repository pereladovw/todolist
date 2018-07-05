Rails.application.routes.draw do
  
  get 'projects/index'
  get 'projects/update'
  get 'projects/create'
 
post '/projects/update'


  resources :projects do
    resources :todos
  end

  root 'projects#index'
root 'projects#update'


end
