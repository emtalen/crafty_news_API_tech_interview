Rails.application.routes.draw do
  get 'comments/create'
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    resources :articles, only: [:index, :show]
    resources :comments, only: [:create]
  end
end
