Rails.application.routes.draw do
  
  get 'projects/index'
  get 'projects/update'
  get 'projects/create'
  get 'projects/projects'
  get 'projects/todos'
get 'projects/androidupdate'
get 'projects/androidcreate'
post '/projects/update'
post 'projects/androidupdate'
post 'projects/androidcreate'


  resources :projects do
    resources :todos
  end

  root 'projects#index'
root 'projects#update'


end
