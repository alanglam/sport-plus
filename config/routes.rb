Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }



  devise_scope :user do

    authenticated :user do
      root to: 'sports#index'
    end
    root to: 'devise/sessions#new'
  end

  get 'dashboard', to: 'users#profile'
  resources :events
  resources :bookings
  get 'chat', to: 'bookings#chat'
  resources :sports, only: [:show, :index] do
  end
  resources :chat_rooms, only: [:show] do
    resources :messages, only: [:create]
  end

  get 'recurency', to: 'events#recurency'
end

