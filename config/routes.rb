Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'

  resources :pets do
    resources :chatrooms, only: :create

    collection do
      get :my_pets
    end
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create

    collection do
      get :my_chatrooms
    end
  end
end
