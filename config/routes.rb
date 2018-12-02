Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'sports#index'
    end
    root to: 'devise/sessions#new'
  end

  get 'dashboard', to: 'users#profile'
  resources :events
  resources :bookings
  resources :sports, only: [:show, :index] do
  end
  resources :chat_rooms, only: [:show] do
    resources :messages, only: [:create]
  end
end

