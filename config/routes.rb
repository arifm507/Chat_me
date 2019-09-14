Rails.application.routes.draw do
  root 'chatroom#index'
  resources :chatroom
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'


  mount ActionCable.server, at: '/cable'

end
