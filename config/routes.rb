Rails.application.routes.draw do
  root 'users#index'
  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get '/classification/show/:name', to: 'classifications#show', as: 'classification'
  # get '/photos/:id/', to: 'photos#destroy'
  # get 'classification' to: 'classification#show'
  # resource :classification, only: [:show]
  # get '/classification/show/:name' to: 'classification#show', as: 'name'
  # get 'users/show'
  # get 'users/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # resource :session, only: [:new, :create, :destroy]
  # resources :questions, except: [:show, :new, :index]

  # get '/tags/:text', to: 'tags#show', as: 'tag'
  # get '/photos/:id/', to: 'photos#destroy'
end
