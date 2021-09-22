Rails.application.routes.draw do
  resources :images
  devise_for :users
  root 'welcome#home'
  get 'my_friends', to: 'users#my_friends'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
