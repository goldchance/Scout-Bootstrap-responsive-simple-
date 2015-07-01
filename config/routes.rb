Rails.application.routes.draw do
  
  root 'home#index'

  get '' => 'home#index'

  get '/jobs' => 'jobs#index'
  get '/jobs/new' => 'jobs#new'
  post '/jobs' => 'jobs#create'
  get '/jobs/:id' => 'jobs#show'
  patch '/jobs/:id' => 'jobs#update'
  delete '/jobs/:id' => 'jobs#destroy'
  get '/jobs/:id/edit' => 'jobs#edit'

  # Log in and Log out

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'

end