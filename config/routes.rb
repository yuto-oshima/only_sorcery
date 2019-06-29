Rails.application.routes.draw do
  root 'homes#index'
  resources :users,     only: [:new, :create, :edit, :update, :destory]
  # resources :sessions,  only: [:new, :create, :destory]
  get    '/welcome', to: 'sessions#new',     as: :welcome
  post   '/login',   to: 'sessions#create',  as: :login
  delete '/logout',  to: 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
