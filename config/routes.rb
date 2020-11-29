Rails.application.routes.draw do

  get 'art/index'
  
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in

  resource :cart, controller: "cart", only: [:show, :update, :edit] do
    member do
      post :add_product
      post :remove_product
      get :confirmation
      #post :finish
    end
  end

  post "cart/:id/finish" => "cart#finish", :as => "finish_cart"


  namespace :admin do
    root to: 'products#index'
    resources :categories
    resources :products
    resources :orders
    resources :users
  end
  
  resources :charges
  resources :users, only: [:new, :create]
  resources :user_sessions, only: [:create, :destroy]
  resources :categories
  resources :products
  resources :password_resets, only: [:new, :create, :edit, :update]
  root to:'products#index'



 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
