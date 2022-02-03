Rails.application.routes.draw do
  root 'users#index'
  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations' }
  #resources :classification, only: [:show]

=begin
  get '/classification/:name', to: 'classifications#show', as: 'classification' do
    get '/level/:name', to: 'levels#show', as: 'level'
  end
=end
  get 'users/show'
  resources :classifications, only: [:show] do
    resources :levels, only: [:show] do
      
    end
  end

=begin   resources :events do
    resources :comments, only: [:create, :destroy]
      # вложенный ресурс подписок
    resources :subscriptions, only: [:create, :destroy]
    resources :photos, only: [:create, :destroy]
    # нужно будет удалить как разберусь с проблемой отпрвки ссылки через method post
    get '/photos/:id/', to: 'photos#destroy'
    post :show, on: :member
  end

  resources :users, only: [:show, :edit, :update] 
=end

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
