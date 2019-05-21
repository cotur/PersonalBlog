Rails.application.routes.draw do
  

  resources :posts
  resources :categories
  devise_for :users
  
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
