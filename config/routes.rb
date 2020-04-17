Rails.application.routes.draw do

  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in

  resource :cart, controller: "cart", only: [:show, :update, :edit] do
    member do
      post :add_product
      post :remove_product
      get :confirmation
      post :finish
    end
  end
  namespace :admin do
    root to: 'products#index'
    resources :categories
    resources :products
    resources :orders
    resources :users
  end

  resources :users, only: [:new, :create]
  resources :user_sessions, only: [:create, :destroy]
  resources :categories
  resources :products
  root to:'products#index'



 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
