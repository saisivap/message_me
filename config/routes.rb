Rails.application.routes.draw do
  devise_for :users,path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  mount ActionCable.server, at: '/cable'
  root 'chatroom#index'
  # root 'devise/sessions#new'
  get 'snew',to: 'sessions#new'
  post 'message',to: 'message1s#create'
end
