Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"
  
  resources :users, only: [:show,:destroy]
  
  resources :user_todos, only: [:create]
  
  resources :user_workings, only: [:create]
  
  post "user_workings/:id" => "user_workings#create"
  
  post "user_dones/:id" => "user_dones#create"
  
  resources :groups, only: [:index, :new, :create, :show]
  get "groups/top/:id" => "groups#top"
  
  resources :group_todos, only: [:create]
end
