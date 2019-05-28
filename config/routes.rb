Rails.application.routes.draw do
  
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
  
end
