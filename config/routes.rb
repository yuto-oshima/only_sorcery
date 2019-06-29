Rails.application.routes.draw do
  get 'homes/index'
  resources :users, only: [:new, :create, :update, :destory]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
