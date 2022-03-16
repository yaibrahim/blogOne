Rails.application.routes.draw do
  get 'clearners/index'
  resources :articles, only: [:show, :create, :index, :new ]
  resources :employees
  resources :friends
  get 'friends/index'
  get 'clients/index'
  resources :posts
  root 'posts#index'

  scope module: 'admin' do
    resources :articles, :comments
  end

  namespace :courses do
    resources :search
  end

  resources :photos do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
