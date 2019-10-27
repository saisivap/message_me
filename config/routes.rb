Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'chatroom#index'
  # root 'devise/sessions#new'
  get 'login',to: 'sessions#new'
end
