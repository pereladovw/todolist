Rails.application.routes.draw do
  get 'todos/index'
  get 'todos/update'
  get 'todos/create'
  get 'projects/index'
  get 'projects/update'
  get 'projects/create'

  resources :projects do
    resources :todos
  end

  root 'projects#index'

end
