Rails.application.routes.draw do

  resources :users
  resources :messages
  resources :sessions
  root 'users#new'
  get 'log_in', to: 'sessions#new'
  get 'log_out', to: 'sessions#destroy'
  get 'sing_up', to: 'users#new'
  get 'main', to: 'main#index'
  get 'messages/page/(:page(.:format))', to: 'messages#index'
  get 'messages', to: 'messages#index'
  get 'users', to: 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
