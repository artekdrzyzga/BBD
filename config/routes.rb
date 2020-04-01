Rails.application.routes.draw do

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
  end

  resources :categories
  resources :products
  root to:'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
