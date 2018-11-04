Rails.application.routes.draw do
  
  root 'main#index'
  resources :users
  resources :messages
  get 'main', to: 'main#index'
  get 'messages/page/(:page(.:format))', to: 'messages#index'
  get 'messages', to: 'messages#index'
  get 'users', to: 'users#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
