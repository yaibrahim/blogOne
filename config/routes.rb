Rails.application.routes.draw do
  get 'clients/index'
  resources :posts
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
