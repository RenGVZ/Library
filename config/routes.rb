Rails.application.routes.draw do
  devise_for :users
  
  root to: 'library#index'

  get 'add', to: 'library#add'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
