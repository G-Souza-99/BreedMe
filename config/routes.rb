Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end

# create e show têm que ser nested nos pets
