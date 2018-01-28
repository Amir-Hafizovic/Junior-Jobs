Rails.application.routes.draw do



  root to: 'pages#home'

  # get 'favourites/new'
  # get 'favourites/create'
  # get 'favourites/index'
  # get 'favourites/edit'
  # get 'favourites/update'
  # get 'favourites/show'
  # get 'favourites/destroy'
  resources :favourites

  # get 'notes/new'
  # get 'notes/create'
  # get 'notes/index'
  # get 'notes/edit'
  # get 'notes/update'
  # get 'notes/show'
  # get 'notes/destroy'
  resources :notes

  #get 'jobs/new'
  # get 'jobs/create'
  # get 'jobs/index'
  # get 'jobs/edit'
  # get 'jobs/update'
  # get 'jobs/show'
  # get 'jobs/destroy'
  get 'jobs/external' => 'jobs#external'
  resources :jobs

  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/show'
  # get 'users/destroy'
  get 'users/juniors' => 'users#juniors'
  get 'users/companies' => 'users#companies'
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  #get '/admin'   => 'pages#admin_party'

  namespace :admin do
    resources :favourites
    resources :jobs
    resources :notes
    resources :users

    root to: "favourites#index"
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
