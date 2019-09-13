Rails.application.routes.draw do
  root 'chatroom#index'
  resources :chatroom
  get 'login', to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
