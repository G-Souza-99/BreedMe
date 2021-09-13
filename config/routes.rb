Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'

  resources :pets do
    resources :chatrooms, only: :create

    collection do
      get :my_pets
    end

    member do
      patch :change_heat
    end
  end

  resources :chatrooms, only: %i[index show] do
    resources :messages, only: :create
  end
end
