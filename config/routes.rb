Rails.application.routes.draw do
  devise_for :users
  # Root
  root to: 'library#index'

  resources :library do 
    collection do
      get :top_rating
    end
    resources :reviews, only: [ :new, :create ]
  end
  
end
