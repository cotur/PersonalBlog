Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'authors/', to: "author#index", as: "authors"
  get 'authors/:id', to: "author#show"
  
  get 'page/home'
  get 'page/keyword'
  get 'keyword/', to: "page#keyword"
  get 'home', to: "page#home", as: "home"

  resources :posts
  resources :categories
  devise_for :users
  
  root to: "page#home"
  
  get "notfound", to: "error#notfound", as: "notfound"

  get "*path" => redirect("/notfound")
  
end
