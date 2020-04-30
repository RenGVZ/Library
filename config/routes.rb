Rails.application.routes.draw do
  devise_for :users
  # Root
  root to: 'library#index'
  # get 'library/add', to: 'library#add'

  resources :library
  # # Read all
  # get '/books', to: 'library#index'

  # # Read one
  # get '/books/:id', to: 'library#show'

  # # Create new book
  # get '/books/add', to: 'library#new'
  # post '/books', to: 'library#create'

  # # Update
  # get '/books/:id/edit', to: 'library#edit'
  # patch '/books/:id', to: 'library#update'

  # # Delete
  # delete '/books/:id', to: 'library#destroy'

end
