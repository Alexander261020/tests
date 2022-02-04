Rails.application.routes.draw do
  root 'users#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get 'users/show'
  resources :classifications, only: [:show] do
    resources :levels, only: [:show]
  end

  post 'questions', to: 'questions#create', as: 'create_questions'
end
