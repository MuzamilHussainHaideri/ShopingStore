Rails.application.routes.draw do
  resources :products
  devise_for :users, controllers: { registrations: 'users/registrations',omniauth_callbacks: 'users/omniauth_callbacks'  }

  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
