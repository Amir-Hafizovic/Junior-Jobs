Rails.application.routes.draw do

  root to: 'pages#home'
  get 'jobs/new'

  # get 'jobs/create'
  # get 'jobs/index'
  # get 'jobs/edit'
  # get 'jobs/update'
  # get 'jobs/show'
  # get 'jobs/destroy'
  resources :jobs
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/show'
  # get 'users/destroy'
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/admin'   => 'pages#admin_party'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
