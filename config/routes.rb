Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#top"
  
  resources :users, only: [:show,:destroy]
  
  get "users/top" => "users#top"
  
  resources :user_todos, only: [:create]
  
  post "user_workings/:id" => "user_workings#create"
  
  post "user_dones/:id" => "user_dones#create"
  
  resources :groups, only: [:index, :new, :create, :show]
  
  get "groups/top/:id" => "groups#top"
  
  resources :group_todos, only: [:create]
  
  post "group_workings/:id" => "group_workings#create"
  
  post "group_dones/:id" => "group_dones#create"
end
