Rails.application.routes.draw do
  

  get 'authors/', to: "author#index", as:"authors"
  get 'authors/:id', to: "author#show"
  
  get 'page/home'
  get 'page/keyword'
  
  resources :posts
  resources :categories
  devise_for :users
  
  root to: "page#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
