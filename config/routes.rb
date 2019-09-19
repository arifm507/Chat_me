Rails.application.routes.draw do
  get 'users/new'
  root 'chatroom#index'
  resources :chatroom

  resources :users,  only: [:show, :edit, :update] 


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'

  get 'register', to: 'users#new'
  post 'register', to: 'users#create'
  

  mount ActionCable.server, at: '/cable'

end