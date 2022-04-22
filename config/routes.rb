Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :products do
    resources :reviews
  end
  devise_for :users, controllers: { registrations: 'users/registrations',omniauth_callbacks: 'users/omniauth_callbacks'  }
  root 'products#index'

  post "checkout/create", to: "checkout#create"
  get "success", to: "checkout#success"
  get "cancel", to: "checkout#cancel"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
